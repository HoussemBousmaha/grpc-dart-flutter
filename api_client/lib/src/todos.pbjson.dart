///
//  Generated code. Do not modify.
//  source: lib/src/todos.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use todoDescriptor instead')
const Todo$json = const {
  '1': 'Todo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `Todo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoDescriptor = $convert.base64Decode('CgRUb2RvEg4KAmlkGAEgASgJUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9u');
@$core.Deprecated('Use noRequestDescriptor instead')
const NoRequest$json = const {
  '1': 'NoRequest',
};

/// Descriptor for `NoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List noRequestDescriptor = $convert.base64Decode('CglOb1JlcXVlc3Q=');
@$core.Deprecated('Use getTodosStreamResponseDescriptor instead')
const GetTodosStreamResponse$json = const {
  '1': 'GetTodosStreamResponse',
  '2': const [
    const {'1': 'todos', '3': 1, '4': 3, '5': 11, '6': '.Todo', '10': 'todos'},
  ],
};

/// Descriptor for `GetTodosStreamResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTodosStreamResponseDescriptor = $convert.base64Decode('ChZHZXRUb2Rvc1N0cmVhbVJlc3BvbnNlEhsKBXRvZG9zGAEgAygLMgUuVG9kb1IFdG9kb3M=');
@$core.Deprecated('Use createTodoRequestDescriptor instead')
const CreateTodoRequest$json = const {
  '1': 'CreateTodoRequest',
  '2': const [
    const {'1': 'title', '3': 1, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 2, '4': 1, '5': 9, '10': 'description'},
  ],
};

/// Descriptor for `CreateTodoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTodoRequestDescriptor = $convert.base64Decode('ChFDcmVhdGVUb2RvUmVxdWVzdBIUCgV0aXRsZRgBIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAiABKAlSC2Rlc2NyaXB0aW9u');
@$core.Deprecated('Use createTodoResponseDescriptor instead')
const CreateTodoResponse$json = const {
  '1': 'CreateTodoResponse',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CreateTodoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createTodoResponseDescriptor = $convert.base64Decode('ChJDcmVhdGVUb2RvUmVzcG9uc2USDgoCaWQYASABKAlSAmlk');
