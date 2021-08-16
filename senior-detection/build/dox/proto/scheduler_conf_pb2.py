# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: dox/proto/scheduler_conf.proto
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from dox.proto import classic_conf_pb2 as dox_dot_proto_dot_classic__conf__pb2
from dox.proto import monopoly_conf_pb2 as dox_dot_proto_dot_monopoly__conf__pb2
from dox.proto import choreography_conf_pb2 as dox_dot_proto_dot_choreography__conf__pb2


DESCRIPTOR = _descriptor.FileDescriptor(
  name='dox/proto/scheduler_conf.proto',
  package='senior.dox.proto',
  syntax='proto2',
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_pb=b'\n\x1e\x64ox/proto/scheduler_conf.proto\x12\x10senior.dox.proto\x1a\x1c\x64ox/proto/classic_conf.proto\x1a\x1d\x64ox/proto/monopoly_conf.proto\x1a!dox/proto/choreography_conf.proto\"L\n\x0bInnerThread\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x0e\n\x06\x63puset\x18\x02 \x01(\t\x12\x0e\n\x06policy\x18\x03 \x01(\t\x12\x0f\n\x04prio\x18\x04 \x01(\r:\x01\x31\"\xc7\x02\n\rSchedulerConf\x12\x0e\n\x06policy\x18\x01 \x01(\t\x12\x13\n\x0broutine_num\x18\x02 \x01(\r\x12\x18\n\x10\x64\x65\x66\x61ult_proc_num\x18\x03 \x01(\r\x12\x1c\n\x14process_level_cpuset\x18\x04 \x01(\t\x12.\n\x07threads\x18\x05 \x03(\x0b\x32\x1d.senior.dox.proto.InnerThread\x12\x33\n\x0c\x63lassic_conf\x18\x06 \x01(\x0b\x32\x1d.senior.dox.proto.ClassicConf\x12=\n\x11\x63horeography_conf\x18\x07 \x01(\x0b\x32\".senior.dox.proto.ChoreographyConf\x12\x35\n\rmonopoly_conf\x18\x08 \x01(\x0b\x32\x1e.senior.dox.proto.MonopolyConf'
  ,
  dependencies=[dox_dot_proto_dot_classic__conf__pb2.DESCRIPTOR,dox_dot_proto_dot_monopoly__conf__pb2.DESCRIPTOR,dox_dot_proto_dot_choreography__conf__pb2.DESCRIPTOR,])




_INNERTHREAD = _descriptor.Descriptor(
  name='InnerThread',
  full_name='senior.dox.proto.InnerThread',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='name', full_name='senior.dox.proto.InnerThread.name', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='cpuset', full_name='senior.dox.proto.InnerThread.cpuset', index=1,
      number=2, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='policy', full_name='senior.dox.proto.InnerThread.policy', index=2,
      number=3, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='prio', full_name='senior.dox.proto.InnerThread.prio', index=3,
      number=4, type=13, cpp_type=3, label=1,
      has_default_value=True, default_value=1,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto2',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=148,
  serialized_end=224,
)


_SCHEDULERCONF = _descriptor.Descriptor(
  name='SchedulerConf',
  full_name='senior.dox.proto.SchedulerConf',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='policy', full_name='senior.dox.proto.SchedulerConf.policy', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='routine_num', full_name='senior.dox.proto.SchedulerConf.routine_num', index=1,
      number=2, type=13, cpp_type=3, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='default_proc_num', full_name='senior.dox.proto.SchedulerConf.default_proc_num', index=2,
      number=3, type=13, cpp_type=3, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='process_level_cpuset', full_name='senior.dox.proto.SchedulerConf.process_level_cpuset', index=3,
      number=4, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='threads', full_name='senior.dox.proto.SchedulerConf.threads', index=4,
      number=5, type=11, cpp_type=10, label=3,
      has_default_value=False, default_value=[],
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='classic_conf', full_name='senior.dox.proto.SchedulerConf.classic_conf', index=5,
      number=6, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='choreography_conf', full_name='senior.dox.proto.SchedulerConf.choreography_conf', index=6,
      number=7, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='monopoly_conf', full_name='senior.dox.proto.SchedulerConf.monopoly_conf', index=7,
      number=8, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
  ],
  extensions=[
  ],
  nested_types=[],
  enum_types=[
  ],
  serialized_options=None,
  is_extendable=False,
  syntax='proto2',
  extension_ranges=[],
  oneofs=[
  ],
  serialized_start=227,
  serialized_end=554,
)

_SCHEDULERCONF.fields_by_name['threads'].message_type = _INNERTHREAD
_SCHEDULERCONF.fields_by_name['classic_conf'].message_type = dox_dot_proto_dot_classic__conf__pb2._CLASSICCONF
_SCHEDULERCONF.fields_by_name['choreography_conf'].message_type = dox_dot_proto_dot_choreography__conf__pb2._CHOREOGRAPHYCONF
_SCHEDULERCONF.fields_by_name['monopoly_conf'].message_type = dox_dot_proto_dot_monopoly__conf__pb2._MONOPOLYCONF
DESCRIPTOR.message_types_by_name['InnerThread'] = _INNERTHREAD
DESCRIPTOR.message_types_by_name['SchedulerConf'] = _SCHEDULERCONF
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

InnerThread = _reflection.GeneratedProtocolMessageType('InnerThread', (_message.Message,), {
  'DESCRIPTOR' : _INNERTHREAD,
  '__module__' : 'dox.proto.scheduler_conf_pb2'
  # @@protoc_insertion_point(class_scope:senior.dox.proto.InnerThread)
  })
_sym_db.RegisterMessage(InnerThread)

SchedulerConf = _reflection.GeneratedProtocolMessageType('SchedulerConf', (_message.Message,), {
  'DESCRIPTOR' : _SCHEDULERCONF,
  '__module__' : 'dox.proto.scheduler_conf_pb2'
  # @@protoc_insertion_point(class_scope:senior.dox.proto.SchedulerConf)
  })
_sym_db.RegisterMessage(SchedulerConf)


# @@protoc_insertion_point(module_scope)
