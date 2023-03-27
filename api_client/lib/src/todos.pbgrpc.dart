///
//  Generated code. Do not modify.
//  source: lib/src/todos.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'todos.pb.dart' as $0;
export 'todos.pb.dart';

class TodoServiceClient extends $grpc.Client {
  static final _$addTodo =
      $grpc.ClientMethod<$0.CreateTodoRequest, $0.CreateTodoResponse>(
          '/TodoService/addTodo',
          ($0.CreateTodoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateTodoResponse.fromBuffer(value));
  static final _$getTodosStream =
      $grpc.ClientMethod<$0.NoRequest, $0.GetTodosStreamResponse>(
          '/TodoService/getTodosStream',
          ($0.NoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetTodosStreamResponse.fromBuffer(value));

  TodoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.CreateTodoResponse> addTodo(
      $0.CreateTodoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addTodo, request, options: options);
  }

  $grpc.ResponseStream<$0.GetTodosStreamResponse> getTodosStream(
      $0.NoRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getTodosStream, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class TodoServiceBase extends $grpc.Service {
  $core.String get $name => 'TodoService';

  TodoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.CreateTodoRequest, $0.CreateTodoResponse>(
        'addTodo',
        addTodo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateTodoRequest.fromBuffer(value),
        ($0.CreateTodoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NoRequest, $0.GetTodosStreamResponse>(
        'getTodosStream',
        getTodosStream_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.NoRequest.fromBuffer(value),
        ($0.GetTodosStreamResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateTodoResponse> addTodo_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateTodoRequest> request) async {
    return addTodo(call, await request);
  }

  $async.Stream<$0.GetTodosStreamResponse> getTodosStream_Pre(
      $grpc.ServiceCall call, $async.Future<$0.NoRequest> request) async* {
    yield* getTodosStream(call, await request);
  }

  $async.Future<$0.CreateTodoResponse> addTodo(
      $grpc.ServiceCall call, $0.CreateTodoRequest request);
  $async.Stream<$0.GetTodosStreamResponse> getTodosStream(
      $grpc.ServiceCall call, $0.NoRequest request);
}
