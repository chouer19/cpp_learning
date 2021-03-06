# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: dox/proto/monopoly_conf.proto
"""Generated protocol buffer code."""
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()




DESCRIPTOR = _descriptor.FileDescriptor(
  name='dox/proto/monopoly_conf.proto',
  package='senior.dox.proto',
  syntax='proto2',
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_pb=b'\n\x1d\x64ox/proto/monopoly_conf.proto\x12\x10senior.dox.proto\"A\n\x0cMonopolyTask\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x0f\n\x04prio\x18\x02 \x01(\r:\x01\x31\x12\x12\n\ngroup_name\x18\x03 \x01(\t\"\xc5\x01\n\x0bSched2Group\x12\x19\n\x04name\x18\x01 \x02(\t:\x0b\x64\x65\x66\x61ult_grp\x12\x15\n\rprocessor_num\x18\x02 \x01(\r\x12\x10\n\x08\x61\x66\x66inity\x18\x03 \x01(\t\x12\x0e\n\x06\x63puset\x18\x04 \x01(\t\x12\x18\n\x10processor_policy\x18\x05 \x01(\t\x12\x19\n\x0eprocessor_prio\x18\x06 \x01(\x05:\x01\x30\x12-\n\x05tasks\x18\x07 \x03(\x0b\x32\x1e.senior.dox.proto.MonopolyTask\"=\n\x0cMonopolyConf\x12-\n\x06groups\x18\x01 \x03(\x0b\x32\x1d.senior.dox.proto.Sched2Group'
)




_MONOPOLYTASK = _descriptor.Descriptor(
  name='MonopolyTask',
  full_name='senior.dox.proto.MonopolyTask',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='name', full_name='senior.dox.proto.MonopolyTask.name', index=0,
      number=1, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='prio', full_name='senior.dox.proto.MonopolyTask.prio', index=1,
      number=2, type=13, cpp_type=3, label=1,
      has_default_value=True, default_value=1,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='group_name', full_name='senior.dox.proto.MonopolyTask.group_name', index=2,
      number=3, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
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
  serialized_start=51,
  serialized_end=116,
)


_SCHED2GROUP = _descriptor.Descriptor(
  name='Sched2Group',
  full_name='senior.dox.proto.Sched2Group',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='name', full_name='senior.dox.proto.Sched2Group.name', index=0,
      number=1, type=9, cpp_type=9, label=2,
      has_default_value=True, default_value=b"default_grp".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='processor_num', full_name='senior.dox.proto.Sched2Group.processor_num', index=1,
      number=2, type=13, cpp_type=3, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='affinity', full_name='senior.dox.proto.Sched2Group.affinity', index=2,
      number=3, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='cpuset', full_name='senior.dox.proto.Sched2Group.cpuset', index=3,
      number=4, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='processor_policy', full_name='senior.dox.proto.Sched2Group.processor_policy', index=4,
      number=5, type=9, cpp_type=9, label=1,
      has_default_value=False, default_value=b"".decode('utf-8'),
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='processor_prio', full_name='senior.dox.proto.Sched2Group.processor_prio', index=5,
      number=6, type=5, cpp_type=1, label=1,
      has_default_value=True, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='tasks', full_name='senior.dox.proto.Sched2Group.tasks', index=6,
      number=7, type=11, cpp_type=10, label=3,
      has_default_value=False, default_value=[],
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
  serialized_start=119,
  serialized_end=316,
)


_MONOPOLYCONF = _descriptor.Descriptor(
  name='MonopolyConf',
  full_name='senior.dox.proto.MonopolyConf',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='groups', full_name='senior.dox.proto.MonopolyConf.groups', index=0,
      number=1, type=11, cpp_type=10, label=3,
      has_default_value=False, default_value=[],
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
  serialized_start=318,
  serialized_end=379,
)

_SCHED2GROUP.fields_by_name['tasks'].message_type = _MONOPOLYTASK
_MONOPOLYCONF.fields_by_name['groups'].message_type = _SCHED2GROUP
DESCRIPTOR.message_types_by_name['MonopolyTask'] = _MONOPOLYTASK
DESCRIPTOR.message_types_by_name['Sched2Group'] = _SCHED2GROUP
DESCRIPTOR.message_types_by_name['MonopolyConf'] = _MONOPOLYCONF
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

MonopolyTask = _reflection.GeneratedProtocolMessageType('MonopolyTask', (_message.Message,), {
  'DESCRIPTOR' : _MONOPOLYTASK,
  '__module__' : 'dox.proto.monopoly_conf_pb2'
  # @@protoc_insertion_point(class_scope:senior.dox.proto.MonopolyTask)
  })
_sym_db.RegisterMessage(MonopolyTask)

Sched2Group = _reflection.GeneratedProtocolMessageType('Sched2Group', (_message.Message,), {
  'DESCRIPTOR' : _SCHED2GROUP,
  '__module__' : 'dox.proto.monopoly_conf_pb2'
  # @@protoc_insertion_point(class_scope:senior.dox.proto.Sched2Group)
  })
_sym_db.RegisterMessage(Sched2Group)

MonopolyConf = _reflection.GeneratedProtocolMessageType('MonopolyConf', (_message.Message,), {
  'DESCRIPTOR' : _MONOPOLYCONF,
  '__module__' : 'dox.proto.monopoly_conf_pb2'
  # @@protoc_insertion_point(class_scope:senior.dox.proto.MonopolyConf)
  })
_sym_db.RegisterMessage(MonopolyConf)


# @@protoc_insertion_point(module_scope)
