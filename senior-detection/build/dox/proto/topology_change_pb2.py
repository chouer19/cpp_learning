# -*- coding: utf-8 -*-
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: dox/proto/topology_change.proto
"""Generated protocol buffer code."""
from google.protobuf.internal import enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from google.protobuf import reflection as _reflection
from google.protobuf import symbol_database as _symbol_database
# @@protoc_insertion_point(imports)

_sym_db = _symbol_database.Default()


from dox.proto import role_attributes_pb2 as dox_dot_proto_dot_role__attributes__pb2


DESCRIPTOR = _descriptor.FileDescriptor(
  name='dox/proto/topology_change.proto',
  package='senior.dox.proto',
  syntax='proto2',
  serialized_options=None,
  create_key=_descriptor._internal_create_key,
  serialized_pb=b'\n\x1f\x64ox/proto/topology_change.proto\x12\x10senior.dox.proto\x1a\x1f\x64ox/proto/role_attributes.proto\"\xea\x01\n\tChangeMsg\x12\x11\n\ttimestamp\x18\x01 \x01(\x04\x12\x31\n\x0b\x63hange_type\x18\x02 \x01(\x0e\x32\x1c.senior.dox.proto.ChangeType\x12\x33\n\x0coperate_type\x18\x03 \x01(\x0e\x32\x1d.senior.dox.proto.OperateType\x12-\n\trole_type\x18\x04 \x01(\x0e\x32\x1a.senior.dox.proto.RoleType\x12\x33\n\trole_attr\x18\x05 \x01(\x0b\x32 .senior.dox.proto.RoleAttributes*]\n\nChangeType\x12\x0f\n\x0b\x43HANGE_NODE\x10\x01\x12\x12\n\x0e\x43HANGE_CHANNEL\x10\x02\x12\x12\n\x0e\x43HANGE_SERVICE\x10\x03\x12\x16\n\x12\x43HANGE_PARTICIPANT\x10\x04**\n\x0bOperateType\x12\x0c\n\x08OPT_JOIN\x10\x01\x12\r\n\tOPT_LEAVE\x10\x02*s\n\x08RoleType\x12\r\n\tROLE_NODE\x10\x01\x12\x0f\n\x0bROLE_WRITER\x10\x02\x12\x0f\n\x0bROLE_READER\x10\x03\x12\x0f\n\x0bROLE_SERVER\x10\x04\x12\x0f\n\x0bROLE_CLIENT\x10\x05\x12\x14\n\x10ROLE_PARTICIPANT\x10\x06'
  ,
  dependencies=[dox_dot_proto_dot_role__attributes__pb2.DESCRIPTOR,])

_CHANGETYPE = _descriptor.EnumDescriptor(
  name='ChangeType',
  full_name='senior.dox.proto.ChangeType',
  filename=None,
  file=DESCRIPTOR,
  create_key=_descriptor._internal_create_key,
  values=[
    _descriptor.EnumValueDescriptor(
      name='CHANGE_NODE', index=0, number=1,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='CHANGE_CHANNEL', index=1, number=2,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='CHANGE_SERVICE', index=2, number=3,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='CHANGE_PARTICIPANT', index=3, number=4,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
  ],
  containing_type=None,
  serialized_options=None,
  serialized_start=323,
  serialized_end=416,
)
_sym_db.RegisterEnumDescriptor(_CHANGETYPE)

ChangeType = enum_type_wrapper.EnumTypeWrapper(_CHANGETYPE)
_OPERATETYPE = _descriptor.EnumDescriptor(
  name='OperateType',
  full_name='senior.dox.proto.OperateType',
  filename=None,
  file=DESCRIPTOR,
  create_key=_descriptor._internal_create_key,
  values=[
    _descriptor.EnumValueDescriptor(
      name='OPT_JOIN', index=0, number=1,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='OPT_LEAVE', index=1, number=2,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
  ],
  containing_type=None,
  serialized_options=None,
  serialized_start=418,
  serialized_end=460,
)
_sym_db.RegisterEnumDescriptor(_OPERATETYPE)

OperateType = enum_type_wrapper.EnumTypeWrapper(_OPERATETYPE)
_ROLETYPE = _descriptor.EnumDescriptor(
  name='RoleType',
  full_name='senior.dox.proto.RoleType',
  filename=None,
  file=DESCRIPTOR,
  create_key=_descriptor._internal_create_key,
  values=[
    _descriptor.EnumValueDescriptor(
      name='ROLE_NODE', index=0, number=1,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='ROLE_WRITER', index=1, number=2,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='ROLE_READER', index=2, number=3,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='ROLE_SERVER', index=3, number=4,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='ROLE_CLIENT', index=4, number=5,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
    _descriptor.EnumValueDescriptor(
      name='ROLE_PARTICIPANT', index=5, number=6,
      serialized_options=None,
      type=None,
      create_key=_descriptor._internal_create_key),
  ],
  containing_type=None,
  serialized_options=None,
  serialized_start=462,
  serialized_end=577,
)
_sym_db.RegisterEnumDescriptor(_ROLETYPE)

RoleType = enum_type_wrapper.EnumTypeWrapper(_ROLETYPE)
CHANGE_NODE = 1
CHANGE_CHANNEL = 2
CHANGE_SERVICE = 3
CHANGE_PARTICIPANT = 4
OPT_JOIN = 1
OPT_LEAVE = 2
ROLE_NODE = 1
ROLE_WRITER = 2
ROLE_READER = 3
ROLE_SERVER = 4
ROLE_CLIENT = 5
ROLE_PARTICIPANT = 6



_CHANGEMSG = _descriptor.Descriptor(
  name='ChangeMsg',
  full_name='senior.dox.proto.ChangeMsg',
  filename=None,
  file=DESCRIPTOR,
  containing_type=None,
  create_key=_descriptor._internal_create_key,
  fields=[
    _descriptor.FieldDescriptor(
      name='timestamp', full_name='senior.dox.proto.ChangeMsg.timestamp', index=0,
      number=1, type=4, cpp_type=4, label=1,
      has_default_value=False, default_value=0,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='change_type', full_name='senior.dox.proto.ChangeMsg.change_type', index=1,
      number=2, type=14, cpp_type=8, label=1,
      has_default_value=False, default_value=1,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='operate_type', full_name='senior.dox.proto.ChangeMsg.operate_type', index=2,
      number=3, type=14, cpp_type=8, label=1,
      has_default_value=False, default_value=1,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='role_type', full_name='senior.dox.proto.ChangeMsg.role_type', index=3,
      number=4, type=14, cpp_type=8, label=1,
      has_default_value=False, default_value=1,
      message_type=None, enum_type=None, containing_type=None,
      is_extension=False, extension_scope=None,
      serialized_options=None, file=DESCRIPTOR,  create_key=_descriptor._internal_create_key),
    _descriptor.FieldDescriptor(
      name='role_attr', full_name='senior.dox.proto.ChangeMsg.role_attr', index=4,
      number=5, type=11, cpp_type=10, label=1,
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
  serialized_start=87,
  serialized_end=321,
)

_CHANGEMSG.fields_by_name['change_type'].enum_type = _CHANGETYPE
_CHANGEMSG.fields_by_name['operate_type'].enum_type = _OPERATETYPE
_CHANGEMSG.fields_by_name['role_type'].enum_type = _ROLETYPE
_CHANGEMSG.fields_by_name['role_attr'].message_type = dox_dot_proto_dot_role__attributes__pb2._ROLEATTRIBUTES
DESCRIPTOR.message_types_by_name['ChangeMsg'] = _CHANGEMSG
DESCRIPTOR.enum_types_by_name['ChangeType'] = _CHANGETYPE
DESCRIPTOR.enum_types_by_name['OperateType'] = _OPERATETYPE
DESCRIPTOR.enum_types_by_name['RoleType'] = _ROLETYPE
_sym_db.RegisterFileDescriptor(DESCRIPTOR)

ChangeMsg = _reflection.GeneratedProtocolMessageType('ChangeMsg', (_message.Message,), {
  'DESCRIPTOR' : _CHANGEMSG,
  '__module__' : 'dox.proto.topology_change_pb2'
  # @@protoc_insertion_point(class_scope:senior.dox.proto.ChangeMsg)
  })
_sym_db.RegisterMessage(ChangeMsg)


# @@protoc_insertion_point(module_scope)
