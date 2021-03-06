# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: dox/proto/dox_conf.proto
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from dox.proto import scheduler_conf_pb2 as dox_dot_proto_dot_scheduler__conf__pb2
from dox.proto import transport_conf_pb2 as dox_dot_proto_dot_transport__conf__pb2
from dox.proto import run_mode_conf_pb2 as dox_dot_proto_dot_run__mode__conf__pb2
from dox.proto import perf_conf_pb2 as dox_dot_proto_dot_perf__conf__pb2


DESCRIPTOR = _descriptor.FileDescriptor(
  name='dox/proto/dox_conf.proto',
  package='senior.dox.proto',
  syntax='proto2',
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_pb=b'\n\x18\x64ox/proto/dox_conf.proto\x12\x10senior.dox.proto\x1a\x1e\x64ox/proto/scheduler_conf.proto\x1a\x1e\x64ox/proto/transport_conf.proto\x1a\x1d\x64ox/proto/run_mode_conf.proto\x1a\x19\x64ox/proto/perf_conf.proto\"\xe4\x01\n\x0b\x43yberConfig\x12\x37\n\x0escheduler_conf\x18\x01 \x01(\x0b\x32\x1f.senior.dox.proto.SchedulerConf\x12\x37\n\x0etransport_conf\x18\x02 \x01(\x0b\x32\x1f.senior.dox.proto.TransportConf\x12\x34\n\rrun_mode_conf\x18\x03 \x01(\x0b\x32\x1d.senior.dox.proto.RunModeConf\x12-\n\tperf_conf\x18\x04 \x01(\x0b\x32\x1a.senior.dox.proto.PerfConf'
  ,
  dependencies=[dox_dot_proto_dot_scheduler__conf__pb2.DESCRIPTOR,dox_dot_proto_dot_transport__conf__pb2.DESCRIPTOR,dox_dot_proto_dot_run__mode__conf__pb2.DESCRIPTOR,dox_dot_proto_dot_perf__conf__pb2.DESCRIPTOR,])




_CYBERCONFIG = _descriptor.Descriptor(
  name='CyberConfig',
  full_name='senior.dox.proto.CyberConfig',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='scheduler_conf', full_name='senior.dox.proto.CyberConfig.scheduler_conf', index=0,
      number=1, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='transport_conf', full_name='senior.dox.proto.CyberConfig.transport_conf', index=1,
      number=2, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='run_mode_conf', full_name='senior.dox.proto.CyberConfig.run_mode_conf', index=2,
      number=3, type=11, cpp_type=10, label=1,
      has_default_value=False, default_value=None,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='perf_conf', full_name='senior.dox.proto.CyberConfig.perf_conf', index=3,
      number=4, type=11, cpp_type=10, label=1,
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
  serialized_start=169,
  serialized_end=397,
)

_CYBERCONFIG.fields_by_name['scheduler_conf'].message_type = dox_dot_proto_dot_scheduler__conf__pb2._SCHEDULERCONF
_CYBERCONFIG.fields_by_name['transport_conf'].message_type = dox_dot_proto_dot_transport__conf__pb2._TRANSPORTCONF
_CYBERCONFIG.fields_by_name['run_mode_conf'].message_type = dox_dot_proto_dot_run__mode__conf__pb2._RUNMODECONF
_CYBERCONFIG.fields_by_name['perf_conf'].message_type = dox_dot_proto_dot_perf__conf__pb2._PERFCONF
DESCRIPTOR.message_types_by_name['CyberConfig'] = _CYBERCONFIG
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

CyberConfig = _reflection.GeneratedProtocolMessageType('CyberConfig', (_message.Message,), {
  'DESCRIPTOR' : _CYBERCONFIG,
  '__module__' : 'dox.proto.dox_conf_pb2'
  # @@protoc_insertion_point(class_scope:senior.dox.proto.CyberConfig)
  })
_sym_db.RegisterMessage(CyberConfig)


# @@protoc_insertion_point(module_scope)
