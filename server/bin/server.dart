import 'dart:async';

import 'package:api_client/api_client.dart';
import 'package:uuid/uuid.dart';

void main(List<String> args) async {
  // Create a new todo service
  final todoService = TodoService();

  // Create a new server
  final server = Server([todoService]);

  // Start the server
  await server.serve(port: 8080);

  print('Server listening on port ${server.port}...');
}

class TodoService extends TodoServiceBase {
  late StreamController<List<Todo>> _streamController;
  final List<Todo> _todos = [];

  @override
  Future<CreateTodoResponse> addTodo(ServiceCall call, CreateTodoRequest request) async {
    // Generate a unique id
    final id = Uuid().v4();

    // Create a new todo
    final todo = Todo(id: id, title: request.title, description: request.description);

    // Add the todo to the list
    _todos.add(todo);

    // Add the todo to the stream
    _streamController.sink.add(_todos);

    // Return the id of the new todo
    return CreateTodoResponse(id: id);
  }

  @override
  Stream<GetTodosStreamResponse> getTodosStream(ServiceCall call, NoRequest request) {
    // Return the stream of todos
    _streamController = StreamController<List<Todo>>();

    _streamController.sink.add(_todos);

    return _streamController.stream.map((todos) => GetTodosStreamResponse(todos: todos));
  }
}
