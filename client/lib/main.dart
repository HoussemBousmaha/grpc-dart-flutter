import 'package:api_client/api_client.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  final app = DevicePreview(builder: (context) => const App());
  runApp(app);
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late final Stream<GetTodosStreamResponse> _todosStream;
  late final ClientChannel _channel;
  late final TodoServiceClient _client;

  @override
  void initState() {
    // Create a new channel
    _channel = ClientChannel(
      'localhost',
      port: 8080,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );

    // Create a new client
    _client = TodoServiceClient(_channel);

    // Create a new stream
    _todosStream = _client.getTodosStream(NoRequest());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Todos')),
      body: StreamBuilder<GetTodosStreamResponse>(
        stream: _todosStream,
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Center(child: Text('No connection'));
            case ConnectionState.waiting:
              return const Center(child: CircularProgressIndicator());
            case ConnectionState.active:
              return ListView.builder(
                itemCount: snapshot.data!.todos.length,
                itemBuilder: (context, index) {
                  final todo = snapshot.data!.todos.elementAt(index);

                  return ListTile(
                    title: Text(todo.title),
                    subtitle: Text('${todo.description} - ${todo.id}'),
                  );
                },
              );
            case ConnectionState.done:
              return const Center(child: Text('Server closed the connection'));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          const title = 'Todo';
          const description = 'Description for $title';

          _client.addTodo(CreateTodoRequest(title: title, description: description));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
