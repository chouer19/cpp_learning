// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: dox/proto/proto_desc.proto

#include "dox/proto/proto_desc.pb.h"

#include <algorithm>

#include <google/protobuf/io/coded_stream.h>
#include <google/protobuf/extension_set.h>
#include <google/protobuf/wire_format_lite.h>
#include <google/protobuf/descriptor.h>
#include <google/protobuf/generated_message_reflection.h>
#include <google/protobuf/reflection_ops.h>
#include <google/protobuf/wire_format.h>
// @@protoc_insertion_point(includes)
#include <google/protobuf/port_def.inc>

PROTOBUF_PRAGMA_INIT_SEG
namespace senior {
namespace dox {
namespace proto {
constexpr ProtoDesc::ProtoDesc(
  ::PROTOBUF_NAMESPACE_ID::internal::ConstantInitialized)
  : dependencies_()
  , desc_(&::PROTOBUF_NAMESPACE_ID::internal::fixed_address_empty_string){}
struct ProtoDescDefaultTypeInternal {
  constexpr ProtoDescDefaultTypeInternal()
    : _instance(::PROTOBUF_NAMESPACE_ID::internal::ConstantInitialized{}) {}
  ~ProtoDescDefaultTypeInternal() {}
  union {
    ProtoDesc _instance;
  };
};
PROTOBUF_ATTRIBUTE_NO_DESTROY PROTOBUF_CONSTINIT ProtoDescDefaultTypeInternal _ProtoDesc_default_instance_;
}  // namespace proto
}  // namespace dox
}  // namespace senior
static ::PROTOBUF_NAMESPACE_ID::Metadata file_level_metadata_dox_2fproto_2fproto_5fdesc_2eproto[1];
static constexpr ::PROTOBUF_NAMESPACE_ID::EnumDescriptor const** file_level_enum_descriptors_dox_2fproto_2fproto_5fdesc_2eproto = nullptr;
static constexpr ::PROTOBUF_NAMESPACE_ID::ServiceDescriptor const** file_level_service_descriptors_dox_2fproto_2fproto_5fdesc_2eproto = nullptr;

const ::PROTOBUF_NAMESPACE_ID::uint32 TableStruct_dox_2fproto_2fproto_5fdesc_2eproto::offsets[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) = {
  PROTOBUF_FIELD_OFFSET(::senior::dox::proto::ProtoDesc, _has_bits_),
  PROTOBUF_FIELD_OFFSET(::senior::dox::proto::ProtoDesc, _internal_metadata_),
  ~0u,  // no _extensions_
  ~0u,  // no _oneof_case_
  ~0u,  // no _weak_field_map_
  PROTOBUF_FIELD_OFFSET(::senior::dox::proto::ProtoDesc, desc_),
  PROTOBUF_FIELD_OFFSET(::senior::dox::proto::ProtoDesc, dependencies_),
  0,
  ~0u,
};
static const ::PROTOBUF_NAMESPACE_ID::internal::MigrationSchema schemas[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) = {
  { 0, 7, sizeof(::senior::dox::proto::ProtoDesc)},
};

static ::PROTOBUF_NAMESPACE_ID::Message const * const file_default_instances[] = {
  reinterpret_cast<const ::PROTOBUF_NAMESPACE_ID::Message*>(&::senior::dox::proto::_ProtoDesc_default_instance_),
};

const char descriptor_table_protodef_dox_2fproto_2fproto_5fdesc_2eproto[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) =
  "\n\032dox/proto/proto_desc.proto\022\020senior.dox"
  ".proto\"L\n\tProtoDesc\022\014\n\004desc\030\001 \001(\014\0221\n\014dep"
  "endencies\030\002 \003(\0132\033.senior.dox.proto.Proto"
  "Desc"
  ;
static ::PROTOBUF_NAMESPACE_ID::internal::once_flag descriptor_table_dox_2fproto_2fproto_5fdesc_2eproto_once;
const ::PROTOBUF_NAMESPACE_ID::internal::DescriptorTable descriptor_table_dox_2fproto_2fproto_5fdesc_2eproto = {
  false, false, 124, descriptor_table_protodef_dox_2fproto_2fproto_5fdesc_2eproto, "dox/proto/proto_desc.proto", 
  &descriptor_table_dox_2fproto_2fproto_5fdesc_2eproto_once, nullptr, 0, 1,
  schemas, file_default_instances, TableStruct_dox_2fproto_2fproto_5fdesc_2eproto::offsets,
  file_level_metadata_dox_2fproto_2fproto_5fdesc_2eproto, file_level_enum_descriptors_dox_2fproto_2fproto_5fdesc_2eproto, file_level_service_descriptors_dox_2fproto_2fproto_5fdesc_2eproto,
};
PROTOBUF_ATTRIBUTE_WEAK const ::PROTOBUF_NAMESPACE_ID::internal::DescriptorTable* descriptor_table_dox_2fproto_2fproto_5fdesc_2eproto_getter() {
  return &descriptor_table_dox_2fproto_2fproto_5fdesc_2eproto;
}

// Force running AddDescriptors() at dynamic initialization time.
PROTOBUF_ATTRIBUTE_INIT_PRIORITY static ::PROTOBUF_NAMESPACE_ID::internal::AddDescriptorsRunner dynamic_init_dummy_dox_2fproto_2fproto_5fdesc_2eproto(&descriptor_table_dox_2fproto_2fproto_5fdesc_2eproto);
namespace senior {
namespace dox {
namespace proto {

// ===================================================================

class ProtoDesc::_Internal {
 public:
  using HasBits = decltype(std::declval<ProtoDesc>()._has_bits_);
  static void set_has_desc(HasBits* has_bits) {
    (*has_bits)[0] |= 1u;
  }
};

ProtoDesc::ProtoDesc(::PROTOBUF_NAMESPACE_ID::Arena* arena,
                         bool is_message_owned)
  : ::PROTOBUF_NAMESPACE_ID::Message(arena, is_message_owned),
  dependencies_(arena) {
  SharedCtor();
  if (!is_message_owned) {
    RegisterArenaDtor(arena);
  }
  // @@protoc_insertion_point(arena_constructor:senior.dox.proto.ProtoDesc)
}
ProtoDesc::ProtoDesc(const ProtoDesc& from)
  : ::PROTOBUF_NAMESPACE_ID::Message(),
      _has_bits_(from._has_bits_),
      dependencies_(from.dependencies_) {
  _internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
  desc_.UnsafeSetDefault(&::PROTOBUF_NAMESPACE_ID::internal::GetEmptyStringAlreadyInited());
  if (from._internal_has_desc()) {
    desc_.Set(::PROTOBUF_NAMESPACE_ID::internal::ArenaStringPtr::EmptyDefault{}, from._internal_desc(), 
      GetArenaForAllocation());
  }
  // @@protoc_insertion_point(copy_constructor:senior.dox.proto.ProtoDesc)
}

inline void ProtoDesc::SharedCtor() {
desc_.UnsafeSetDefault(&::PROTOBUF_NAMESPACE_ID::internal::GetEmptyStringAlreadyInited());
}

ProtoDesc::~ProtoDesc() {
  // @@protoc_insertion_point(destructor:senior.dox.proto.ProtoDesc)
  if (GetArenaForAllocation() != nullptr) return;
  SharedDtor();
  _internal_metadata_.Delete<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>();
}

inline void ProtoDesc::SharedDtor() {
  GOOGLE_DCHECK(GetArenaForAllocation() == nullptr);
  desc_.DestroyNoArena(&::PROTOBUF_NAMESPACE_ID::internal::GetEmptyStringAlreadyInited());
}

void ProtoDesc::ArenaDtor(void* object) {
  ProtoDesc* _this = reinterpret_cast< ProtoDesc* >(object);
  (void)_this;
}
void ProtoDesc::RegisterArenaDtor(::PROTOBUF_NAMESPACE_ID::Arena*) {
}
void ProtoDesc::SetCachedSize(int size) const {
  _cached_size_.Set(size);
}

void ProtoDesc::Clear() {
// @@protoc_insertion_point(message_clear_start:senior.dox.proto.ProtoDesc)
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  dependencies_.Clear();
  cached_has_bits = _has_bits_[0];
  if (cached_has_bits & 0x00000001u) {
    desc_.ClearNonDefaultToEmpty();
  }
  _has_bits_.Clear();
  _internal_metadata_.Clear<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>();
}

const char* ProtoDesc::_InternalParse(const char* ptr, ::PROTOBUF_NAMESPACE_ID::internal::ParseContext* ctx) {
#define CHK_(x) if (PROTOBUF_PREDICT_FALSE(!(x))) goto failure
  _Internal::HasBits has_bits{};
  while (!ctx->Done(&ptr)) {
    ::PROTOBUF_NAMESPACE_ID::uint32 tag;
    ptr = ::PROTOBUF_NAMESPACE_ID::internal::ReadTag(ptr, &tag);
    switch (tag >> 3) {
      // optional bytes desc = 1;
      case 1:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 10)) {
          auto str = _internal_mutable_desc();
          ptr = ::PROTOBUF_NAMESPACE_ID::internal::InlineGreedyStringParser(str, ptr, ctx);
          CHK_(ptr);
        } else goto handle_unusual;
        continue;
      // repeated .senior.dox.proto.ProtoDesc dependencies = 2;
      case 2:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 18)) {
          ptr -= 1;
          do {
            ptr += 1;
            ptr = ctx->ParseMessage(_internal_add_dependencies(), ptr);
            CHK_(ptr);
            if (!ctx->DataAvailable(ptr)) break;
          } while (::PROTOBUF_NAMESPACE_ID::internal::ExpectTag<18>(ptr));
        } else goto handle_unusual;
        continue;
      default: {
      handle_unusual:
        if ((tag == 0) || ((tag & 7) == 4)) {
          CHK_(ptr);
          ctx->SetLastTag(tag);
          goto success;
        }
        ptr = UnknownFieldParse(tag,
            _internal_metadata_.mutable_unknown_fields<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(),
            ptr, ctx);
        CHK_(ptr != nullptr);
        continue;
      }
    }  // switch
  }  // while
success:
  _has_bits_.Or(has_bits);
  return ptr;
failure:
  ptr = nullptr;
  goto success;
#undef CHK_
}

::PROTOBUF_NAMESPACE_ID::uint8* ProtoDesc::_InternalSerialize(
    ::PROTOBUF_NAMESPACE_ID::uint8* target, ::PROTOBUF_NAMESPACE_ID::io::EpsCopyOutputStream* stream) const {
  // @@protoc_insertion_point(serialize_to_array_start:senior.dox.proto.ProtoDesc)
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  cached_has_bits = _has_bits_[0];
  // optional bytes desc = 1;
  if (cached_has_bits & 0x00000001u) {
    target = stream->WriteBytesMaybeAliased(
        1, this->_internal_desc(), target);
  }

  // repeated .senior.dox.proto.ProtoDesc dependencies = 2;
  for (unsigned int i = 0,
      n = static_cast<unsigned int>(this->_internal_dependencies_size()); i < n; i++) {
    target = stream->EnsureSpace(target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::
      InternalWriteMessage(2, this->_internal_dependencies(i), target, stream);
  }

  if (PROTOBUF_PREDICT_FALSE(_internal_metadata_.have_unknown_fields())) {
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormat::InternalSerializeUnknownFieldsToArray(
        _internal_metadata_.unknown_fields<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(::PROTOBUF_NAMESPACE_ID::UnknownFieldSet::default_instance), target, stream);
  }
  // @@protoc_insertion_point(serialize_to_array_end:senior.dox.proto.ProtoDesc)
  return target;
}

size_t ProtoDesc::ByteSizeLong() const {
// @@protoc_insertion_point(message_byte_size_start:senior.dox.proto.ProtoDesc)
  size_t total_size = 0;

  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  // repeated .senior.dox.proto.ProtoDesc dependencies = 2;
  total_size += 1UL * this->_internal_dependencies_size();
  for (const auto& msg : this->dependencies_) {
    total_size +=
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::MessageSize(msg);
  }

  // optional bytes desc = 1;
  cached_has_bits = _has_bits_[0];
  if (cached_has_bits & 0x00000001u) {
    total_size += 1 +
      ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::BytesSize(
        this->_internal_desc());
  }

  if (PROTOBUF_PREDICT_FALSE(_internal_metadata_.have_unknown_fields())) {
    return ::PROTOBUF_NAMESPACE_ID::internal::ComputeUnknownFieldsSize(
        _internal_metadata_, total_size, &_cached_size_);
  }
  int cached_size = ::PROTOBUF_NAMESPACE_ID::internal::ToCachedSize(total_size);
  SetCachedSize(cached_size);
  return total_size;
}

const ::PROTOBUF_NAMESPACE_ID::Message::ClassData ProtoDesc::_class_data_ = {
    ::PROTOBUF_NAMESPACE_ID::Message::CopyWithSizeCheck,
    ProtoDesc::MergeImpl
};
const ::PROTOBUF_NAMESPACE_ID::Message::ClassData*ProtoDesc::GetClassData() const { return &_class_data_; }

void ProtoDesc::MergeImpl(::PROTOBUF_NAMESPACE_ID::Message*to,
                      const ::PROTOBUF_NAMESPACE_ID::Message&from) {
  static_cast<ProtoDesc *>(to)->MergeFrom(
      static_cast<const ProtoDesc &>(from));
}


void ProtoDesc::MergeFrom(const ProtoDesc& from) {
// @@protoc_insertion_point(class_specific_merge_from_start:senior.dox.proto.ProtoDesc)
  GOOGLE_DCHECK_NE(&from, this);
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  dependencies_.MergeFrom(from.dependencies_);
  if (from._internal_has_desc()) {
    _internal_set_desc(from._internal_desc());
  }
  _internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
}

void ProtoDesc::CopyFrom(const ProtoDesc& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:senior.dox.proto.ProtoDesc)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool ProtoDesc::IsInitialized() const {
  return true;
}

void ProtoDesc::InternalSwap(ProtoDesc* other) {
  using std::swap;
  _internal_metadata_.InternalSwap(&other->_internal_metadata_);
  swap(_has_bits_[0], other->_has_bits_[0]);
  dependencies_.InternalSwap(&other->dependencies_);
  ::PROTOBUF_NAMESPACE_ID::internal::ArenaStringPtr::InternalSwap(
      &::PROTOBUF_NAMESPACE_ID::internal::GetEmptyStringAlreadyInited(),
      &desc_, GetArenaForAllocation(),
      &other->desc_, other->GetArenaForAllocation()
  );
}

::PROTOBUF_NAMESPACE_ID::Metadata ProtoDesc::GetMetadata() const {
  return ::PROTOBUF_NAMESPACE_ID::internal::AssignDescriptors(
      &descriptor_table_dox_2fproto_2fproto_5fdesc_2eproto_getter, &descriptor_table_dox_2fproto_2fproto_5fdesc_2eproto_once,
      file_level_metadata_dox_2fproto_2fproto_5fdesc_2eproto[0]);
}

// @@protoc_insertion_point(namespace_scope)
}  // namespace proto
}  // namespace dox
}  // namespace senior
PROTOBUF_NAMESPACE_OPEN
template<> PROTOBUF_NOINLINE ::senior::dox::proto::ProtoDesc* Arena::CreateMaybeMessage< ::senior::dox::proto::ProtoDesc >(Arena* arena) {
  return Arena::CreateMessageInternal< ::senior::dox::proto::ProtoDesc >(arena);
}
PROTOBUF_NAMESPACE_CLOSE

// @@protoc_insertion_point(global_scope)
#include <google/protobuf/port_undef.inc>
