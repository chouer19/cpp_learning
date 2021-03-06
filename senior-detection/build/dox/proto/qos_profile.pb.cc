// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: dox/proto/qos_profile.proto

#include "dox/proto/qos_profile.pb.h"

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
constexpr QosProfile::QosProfile(
  ::PROTOBUF_NAMESPACE_ID::internal::ConstantInitialized)
  : mps_(0u)
  , history_(1)

  , depth_(1u)
  , reliability_(1)

  , durability_(2)
{}
struct QosProfileDefaultTypeInternal {
  constexpr QosProfileDefaultTypeInternal()
    : _instance(::PROTOBUF_NAMESPACE_ID::internal::ConstantInitialized{}) {}
  ~QosProfileDefaultTypeInternal() {}
  union {
    QosProfile _instance;
  };
};
PROTOBUF_ATTRIBUTE_NO_DESTROY PROTOBUF_CONSTINIT QosProfileDefaultTypeInternal _QosProfile_default_instance_;
}  // namespace proto
}  // namespace dox
}  // namespace senior
static ::PROTOBUF_NAMESPACE_ID::Metadata file_level_metadata_dox_2fproto_2fqos_5fprofile_2eproto[1];
static const ::PROTOBUF_NAMESPACE_ID::EnumDescriptor* file_level_enum_descriptors_dox_2fproto_2fqos_5fprofile_2eproto[3];
static constexpr ::PROTOBUF_NAMESPACE_ID::ServiceDescriptor const** file_level_service_descriptors_dox_2fproto_2fqos_5fprofile_2eproto = nullptr;

const ::PROTOBUF_NAMESPACE_ID::uint32 TableStruct_dox_2fproto_2fqos_5fprofile_2eproto::offsets[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) = {
  PROTOBUF_FIELD_OFFSET(::senior::dox::proto::QosProfile, _has_bits_),
  PROTOBUF_FIELD_OFFSET(::senior::dox::proto::QosProfile, _internal_metadata_),
  ~0u,  // no _extensions_
  ~0u,  // no _oneof_case_
  ~0u,  // no _weak_field_map_
  PROTOBUF_FIELD_OFFSET(::senior::dox::proto::QosProfile, history_),
  PROTOBUF_FIELD_OFFSET(::senior::dox::proto::QosProfile, depth_),
  PROTOBUF_FIELD_OFFSET(::senior::dox::proto::QosProfile, mps_),
  PROTOBUF_FIELD_OFFSET(::senior::dox::proto::QosProfile, reliability_),
  PROTOBUF_FIELD_OFFSET(::senior::dox::proto::QosProfile, durability_),
  1,
  2,
  0,
  3,
  4,
};
static const ::PROTOBUF_NAMESPACE_ID::internal::MigrationSchema schemas[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) = {
  { 0, 10, sizeof(::senior::dox::proto::QosProfile)},
};

static ::PROTOBUF_NAMESPACE_ID::Message const * const file_default_instances[] = {
  reinterpret_cast<const ::PROTOBUF_NAMESPACE_ID::Message*>(&::senior::dox::proto::_QosProfile_default_instance_),
};

const char descriptor_table_protodef_dox_2fproto_2fqos_5fprofile_2eproto[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) =
  "\n\033dox/proto/qos_profile.proto\022\020senior.do"
  "x.proto\"\231\002\n\nQosProfile\022F\n\007history\030\001 \001(\0162"
  "\".senior.dox.proto.QosHistoryPolicy:\021HIS"
  "TORY_KEEP_LAST\022\020\n\005depth\030\002 \001(\r:\0011\022\016\n\003mps\030"
  "\003 \001(\r:\0010\022Q\n\013reliability\030\004 \001(\0162&.senior.d"
  "ox.proto.QosReliabilityPolicy:\024RELIABILI"
  "TY_RELIABLE\022N\n\ndurability\030\005 \001(\0162%.senior"
  ".dox.proto.QosDurabilityPolicy:\023DURABILI"
  "TY_VOLATILE*[\n\020QosHistoryPolicy\022\032\n\026HISTO"
  "RY_SYSTEM_DEFAULT\020\000\022\025\n\021HISTORY_KEEP_LAST"
  "\020\001\022\024\n\020HISTORY_KEEP_ALL\020\002*m\n\024QosReliabili"
  "tyPolicy\022\036\n\032RELIABILITY_SYSTEM_DEFAULT\020\000"
  "\022\030\n\024RELIABILITY_RELIABLE\020\001\022\033\n\027RELIABILIT"
  "Y_BEST_EFFORT\020\002*m\n\023QosDurabilityPolicy\022\035"
  "\n\031DURABILITY_SYSTEM_DEFAULT\020\000\022\036\n\032DURABIL"
  "ITY_TRANSIENT_LOCAL\020\001\022\027\n\023DURABILITY_VOLA"
  "TILE\020\002"
  ;
static ::PROTOBUF_NAMESPACE_ID::internal::once_flag descriptor_table_dox_2fproto_2fqos_5fprofile_2eproto_once;
const ::PROTOBUF_NAMESPACE_ID::internal::DescriptorTable descriptor_table_dox_2fproto_2fqos_5fprofile_2eproto = {
  false, false, 646, descriptor_table_protodef_dox_2fproto_2fqos_5fprofile_2eproto, "dox/proto/qos_profile.proto", 
  &descriptor_table_dox_2fproto_2fqos_5fprofile_2eproto_once, nullptr, 0, 1,
  schemas, file_default_instances, TableStruct_dox_2fproto_2fqos_5fprofile_2eproto::offsets,
  file_level_metadata_dox_2fproto_2fqos_5fprofile_2eproto, file_level_enum_descriptors_dox_2fproto_2fqos_5fprofile_2eproto, file_level_service_descriptors_dox_2fproto_2fqos_5fprofile_2eproto,
};
PROTOBUF_ATTRIBUTE_WEAK const ::PROTOBUF_NAMESPACE_ID::internal::DescriptorTable* descriptor_table_dox_2fproto_2fqos_5fprofile_2eproto_getter() {
  return &descriptor_table_dox_2fproto_2fqos_5fprofile_2eproto;
}

// Force running AddDescriptors() at dynamic initialization time.
PROTOBUF_ATTRIBUTE_INIT_PRIORITY static ::PROTOBUF_NAMESPACE_ID::internal::AddDescriptorsRunner dynamic_init_dummy_dox_2fproto_2fqos_5fprofile_2eproto(&descriptor_table_dox_2fproto_2fqos_5fprofile_2eproto);
namespace senior {
namespace dox {
namespace proto {
const ::PROTOBUF_NAMESPACE_ID::EnumDescriptor* QosHistoryPolicy_descriptor() {
  ::PROTOBUF_NAMESPACE_ID::internal::AssignDescriptors(&descriptor_table_dox_2fproto_2fqos_5fprofile_2eproto);
  return file_level_enum_descriptors_dox_2fproto_2fqos_5fprofile_2eproto[0];
}
bool QosHistoryPolicy_IsValid(int value) {
  switch (value) {
    case 0:
    case 1:
    case 2:
      return true;
    default:
      return false;
  }
}

const ::PROTOBUF_NAMESPACE_ID::EnumDescriptor* QosReliabilityPolicy_descriptor() {
  ::PROTOBUF_NAMESPACE_ID::internal::AssignDescriptors(&descriptor_table_dox_2fproto_2fqos_5fprofile_2eproto);
  return file_level_enum_descriptors_dox_2fproto_2fqos_5fprofile_2eproto[1];
}
bool QosReliabilityPolicy_IsValid(int value) {
  switch (value) {
    case 0:
    case 1:
    case 2:
      return true;
    default:
      return false;
  }
}

const ::PROTOBUF_NAMESPACE_ID::EnumDescriptor* QosDurabilityPolicy_descriptor() {
  ::PROTOBUF_NAMESPACE_ID::internal::AssignDescriptors(&descriptor_table_dox_2fproto_2fqos_5fprofile_2eproto);
  return file_level_enum_descriptors_dox_2fproto_2fqos_5fprofile_2eproto[2];
}
bool QosDurabilityPolicy_IsValid(int value) {
  switch (value) {
    case 0:
    case 1:
    case 2:
      return true;
    default:
      return false;
  }
}


// ===================================================================

class QosProfile::_Internal {
 public:
  using HasBits = decltype(std::declval<QosProfile>()._has_bits_);
  static void set_has_history(HasBits* has_bits) {
    (*has_bits)[0] |= 2u;
  }
  static void set_has_depth(HasBits* has_bits) {
    (*has_bits)[0] |= 4u;
  }
  static void set_has_mps(HasBits* has_bits) {
    (*has_bits)[0] |= 1u;
  }
  static void set_has_reliability(HasBits* has_bits) {
    (*has_bits)[0] |= 8u;
  }
  static void set_has_durability(HasBits* has_bits) {
    (*has_bits)[0] |= 16u;
  }
};

QosProfile::QosProfile(::PROTOBUF_NAMESPACE_ID::Arena* arena,
                         bool is_message_owned)
  : ::PROTOBUF_NAMESPACE_ID::Message(arena, is_message_owned) {
  SharedCtor();
  if (!is_message_owned) {
    RegisterArenaDtor(arena);
  }
  // @@protoc_insertion_point(arena_constructor:senior.dox.proto.QosProfile)
}
QosProfile::QosProfile(const QosProfile& from)
  : ::PROTOBUF_NAMESPACE_ID::Message(),
      _has_bits_(from._has_bits_) {
  _internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
  ::memcpy(&mps_, &from.mps_,
    static_cast<size_t>(reinterpret_cast<char*>(&durability_) -
    reinterpret_cast<char*>(&mps_)) + sizeof(durability_));
  // @@protoc_insertion_point(copy_constructor:senior.dox.proto.QosProfile)
}

inline void QosProfile::SharedCtor() {
mps_ = 0u;
history_ = 1;
depth_ = 1u;
reliability_ = 1;
durability_ = 2;
}

QosProfile::~QosProfile() {
  // @@protoc_insertion_point(destructor:senior.dox.proto.QosProfile)
  if (GetArenaForAllocation() != nullptr) return;
  SharedDtor();
  _internal_metadata_.Delete<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>();
}

inline void QosProfile::SharedDtor() {
  GOOGLE_DCHECK(GetArenaForAllocation() == nullptr);
}

void QosProfile::ArenaDtor(void* object) {
  QosProfile* _this = reinterpret_cast< QosProfile* >(object);
  (void)_this;
}
void QosProfile::RegisterArenaDtor(::PROTOBUF_NAMESPACE_ID::Arena*) {
}
void QosProfile::SetCachedSize(int size) const {
  _cached_size_.Set(size);
}

void QosProfile::Clear() {
// @@protoc_insertion_point(message_clear_start:senior.dox.proto.QosProfile)
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  cached_has_bits = _has_bits_[0];
  if (cached_has_bits & 0x0000001fu) {
    mps_ = 0u;
    history_ = 1;
    depth_ = 1u;
    reliability_ = 1;
    durability_ = 2;
  }
  _has_bits_.Clear();
  _internal_metadata_.Clear<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>();
}

const char* QosProfile::_InternalParse(const char* ptr, ::PROTOBUF_NAMESPACE_ID::internal::ParseContext* ctx) {
#define CHK_(x) if (PROTOBUF_PREDICT_FALSE(!(x))) goto failure
  _Internal::HasBits has_bits{};
  while (!ctx->Done(&ptr)) {
    ::PROTOBUF_NAMESPACE_ID::uint32 tag;
    ptr = ::PROTOBUF_NAMESPACE_ID::internal::ReadTag(ptr, &tag);
    switch (tag >> 3) {
      // optional .senior.dox.proto.QosHistoryPolicy history = 1 [default = HISTORY_KEEP_LAST];
      case 1:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 8)) {
          ::PROTOBUF_NAMESPACE_ID::uint64 val = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint64(&ptr);
          CHK_(ptr);
          if (PROTOBUF_PREDICT_TRUE(::senior::dox::proto::QosHistoryPolicy_IsValid(val))) {
            _internal_set_history(static_cast<::senior::dox::proto::QosHistoryPolicy>(val));
          } else {
            ::PROTOBUF_NAMESPACE_ID::internal::WriteVarint(1, val, mutable_unknown_fields());
          }
        } else goto handle_unusual;
        continue;
      // optional uint32 depth = 2 [default = 1];
      case 2:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 16)) {
          _Internal::set_has_depth(&has_bits);
          depth_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint32(&ptr);
          CHK_(ptr);
        } else goto handle_unusual;
        continue;
      // optional uint32 mps = 3 [default = 0];
      case 3:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 24)) {
          _Internal::set_has_mps(&has_bits);
          mps_ = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint32(&ptr);
          CHK_(ptr);
        } else goto handle_unusual;
        continue;
      // optional .senior.dox.proto.QosReliabilityPolicy reliability = 4 [default = RELIABILITY_RELIABLE];
      case 4:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 32)) {
          ::PROTOBUF_NAMESPACE_ID::uint64 val = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint64(&ptr);
          CHK_(ptr);
          if (PROTOBUF_PREDICT_TRUE(::senior::dox::proto::QosReliabilityPolicy_IsValid(val))) {
            _internal_set_reliability(static_cast<::senior::dox::proto::QosReliabilityPolicy>(val));
          } else {
            ::PROTOBUF_NAMESPACE_ID::internal::WriteVarint(4, val, mutable_unknown_fields());
          }
        } else goto handle_unusual;
        continue;
      // optional .senior.dox.proto.QosDurabilityPolicy durability = 5 [default = DURABILITY_VOLATILE];
      case 5:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 40)) {
          ::PROTOBUF_NAMESPACE_ID::uint64 val = ::PROTOBUF_NAMESPACE_ID::internal::ReadVarint64(&ptr);
          CHK_(ptr);
          if (PROTOBUF_PREDICT_TRUE(::senior::dox::proto::QosDurabilityPolicy_IsValid(val))) {
            _internal_set_durability(static_cast<::senior::dox::proto::QosDurabilityPolicy>(val));
          } else {
            ::PROTOBUF_NAMESPACE_ID::internal::WriteVarint(5, val, mutable_unknown_fields());
          }
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

::PROTOBUF_NAMESPACE_ID::uint8* QosProfile::_InternalSerialize(
    ::PROTOBUF_NAMESPACE_ID::uint8* target, ::PROTOBUF_NAMESPACE_ID::io::EpsCopyOutputStream* stream) const {
  // @@protoc_insertion_point(serialize_to_array_start:senior.dox.proto.QosProfile)
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  cached_has_bits = _has_bits_[0];
  // optional .senior.dox.proto.QosHistoryPolicy history = 1 [default = HISTORY_KEEP_LAST];
  if (cached_has_bits & 0x00000002u) {
    target = stream->EnsureSpace(target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteEnumToArray(
      1, this->_internal_history(), target);
  }

  // optional uint32 depth = 2 [default = 1];
  if (cached_has_bits & 0x00000004u) {
    target = stream->EnsureSpace(target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteUInt32ToArray(2, this->_internal_depth(), target);
  }

  // optional uint32 mps = 3 [default = 0];
  if (cached_has_bits & 0x00000001u) {
    target = stream->EnsureSpace(target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteUInt32ToArray(3, this->_internal_mps(), target);
  }

  // optional .senior.dox.proto.QosReliabilityPolicy reliability = 4 [default = RELIABILITY_RELIABLE];
  if (cached_has_bits & 0x00000008u) {
    target = stream->EnsureSpace(target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteEnumToArray(
      4, this->_internal_reliability(), target);
  }

  // optional .senior.dox.proto.QosDurabilityPolicy durability = 5 [default = DURABILITY_VOLATILE];
  if (cached_has_bits & 0x00000010u) {
    target = stream->EnsureSpace(target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::WriteEnumToArray(
      5, this->_internal_durability(), target);
  }

  if (PROTOBUF_PREDICT_FALSE(_internal_metadata_.have_unknown_fields())) {
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormat::InternalSerializeUnknownFieldsToArray(
        _internal_metadata_.unknown_fields<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(::PROTOBUF_NAMESPACE_ID::UnknownFieldSet::default_instance), target, stream);
  }
  // @@protoc_insertion_point(serialize_to_array_end:senior.dox.proto.QosProfile)
  return target;
}

size_t QosProfile::ByteSizeLong() const {
// @@protoc_insertion_point(message_byte_size_start:senior.dox.proto.QosProfile)
  size_t total_size = 0;

  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  cached_has_bits = _has_bits_[0];
  if (cached_has_bits & 0x0000001fu) {
    // optional uint32 mps = 3 [default = 0];
    if (cached_has_bits & 0x00000001u) {
      total_size += 1 +
        ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::UInt32Size(
          this->_internal_mps());
    }

    // optional .senior.dox.proto.QosHistoryPolicy history = 1 [default = HISTORY_KEEP_LAST];
    if (cached_has_bits & 0x00000002u) {
      total_size += 1 +
        ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::EnumSize(this->_internal_history());
    }

    // optional uint32 depth = 2 [default = 1];
    if (cached_has_bits & 0x00000004u) {
      total_size += 1 +
        ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::UInt32Size(
          this->_internal_depth());
    }

    // optional .senior.dox.proto.QosReliabilityPolicy reliability = 4 [default = RELIABILITY_RELIABLE];
    if (cached_has_bits & 0x00000008u) {
      total_size += 1 +
        ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::EnumSize(this->_internal_reliability());
    }

    // optional .senior.dox.proto.QosDurabilityPolicy durability = 5 [default = DURABILITY_VOLATILE];
    if (cached_has_bits & 0x00000010u) {
      total_size += 1 +
        ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::EnumSize(this->_internal_durability());
    }

  }
  if (PROTOBUF_PREDICT_FALSE(_internal_metadata_.have_unknown_fields())) {
    return ::PROTOBUF_NAMESPACE_ID::internal::ComputeUnknownFieldsSize(
        _internal_metadata_, total_size, &_cached_size_);
  }
  int cached_size = ::PROTOBUF_NAMESPACE_ID::internal::ToCachedSize(total_size);
  SetCachedSize(cached_size);
  return total_size;
}

const ::PROTOBUF_NAMESPACE_ID::Message::ClassData QosProfile::_class_data_ = {
    ::PROTOBUF_NAMESPACE_ID::Message::CopyWithSizeCheck,
    QosProfile::MergeImpl
};
const ::PROTOBUF_NAMESPACE_ID::Message::ClassData*QosProfile::GetClassData() const { return &_class_data_; }

void QosProfile::MergeImpl(::PROTOBUF_NAMESPACE_ID::Message*to,
                      const ::PROTOBUF_NAMESPACE_ID::Message&from) {
  static_cast<QosProfile *>(to)->MergeFrom(
      static_cast<const QosProfile &>(from));
}


void QosProfile::MergeFrom(const QosProfile& from) {
// @@protoc_insertion_point(class_specific_merge_from_start:senior.dox.proto.QosProfile)
  GOOGLE_DCHECK_NE(&from, this);
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  cached_has_bits = from._has_bits_[0];
  if (cached_has_bits & 0x0000001fu) {
    if (cached_has_bits & 0x00000001u) {
      mps_ = from.mps_;
    }
    if (cached_has_bits & 0x00000002u) {
      history_ = from.history_;
    }
    if (cached_has_bits & 0x00000004u) {
      depth_ = from.depth_;
    }
    if (cached_has_bits & 0x00000008u) {
      reliability_ = from.reliability_;
    }
    if (cached_has_bits & 0x00000010u) {
      durability_ = from.durability_;
    }
    _has_bits_[0] |= cached_has_bits;
  }
  _internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
}

void QosProfile::CopyFrom(const QosProfile& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:senior.dox.proto.QosProfile)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool QosProfile::IsInitialized() const {
  return true;
}

void QosProfile::InternalSwap(QosProfile* other) {
  using std::swap;
  _internal_metadata_.InternalSwap(&other->_internal_metadata_);
  swap(_has_bits_[0], other->_has_bits_[0]);
  swap(mps_, other->mps_);
  swap(history_, other->history_);
  swap(depth_, other->depth_);
  swap(reliability_, other->reliability_);
  swap(durability_, other->durability_);
}

::PROTOBUF_NAMESPACE_ID::Metadata QosProfile::GetMetadata() const {
  return ::PROTOBUF_NAMESPACE_ID::internal::AssignDescriptors(
      &descriptor_table_dox_2fproto_2fqos_5fprofile_2eproto_getter, &descriptor_table_dox_2fproto_2fqos_5fprofile_2eproto_once,
      file_level_metadata_dox_2fproto_2fqos_5fprofile_2eproto[0]);
}

// @@protoc_insertion_point(namespace_scope)
}  // namespace proto
}  // namespace dox
}  // namespace senior
PROTOBUF_NAMESPACE_OPEN
template<> PROTOBUF_NOINLINE ::senior::dox::proto::QosProfile* Arena::CreateMaybeMessage< ::senior::dox::proto::QosProfile >(Arena* arena) {
  return Arena::CreateMessageInternal< ::senior::dox::proto::QosProfile >(arena);
}
PROTOBUF_NAMESPACE_CLOSE

// @@protoc_insertion_point(global_scope)
#include <google/protobuf/port_undef.inc>
