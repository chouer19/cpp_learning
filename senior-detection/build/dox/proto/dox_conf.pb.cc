// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: dox/proto/dox_conf.proto

#include "dox/proto/dox_conf.pb.h"

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
constexpr CyberConfig::CyberConfig(
  ::PROTOBUF_NAMESPACE_ID::internal::ConstantInitialized)
  : scheduler_conf_(nullptr)
  , transport_conf_(nullptr)
  , run_mode_conf_(nullptr)
  , perf_conf_(nullptr){}
struct CyberConfigDefaultTypeInternal {
  constexpr CyberConfigDefaultTypeInternal()
    : _instance(::PROTOBUF_NAMESPACE_ID::internal::ConstantInitialized{}) {}
  ~CyberConfigDefaultTypeInternal() {}
  union {
    CyberConfig _instance;
  };
};
PROTOBUF_ATTRIBUTE_NO_DESTROY PROTOBUF_CONSTINIT CyberConfigDefaultTypeInternal _CyberConfig_default_instance_;
}  // namespace proto
}  // namespace dox
}  // namespace senior
static ::PROTOBUF_NAMESPACE_ID::Metadata file_level_metadata_dox_2fproto_2fdox_5fconf_2eproto[1];
static constexpr ::PROTOBUF_NAMESPACE_ID::EnumDescriptor const** file_level_enum_descriptors_dox_2fproto_2fdox_5fconf_2eproto = nullptr;
static constexpr ::PROTOBUF_NAMESPACE_ID::ServiceDescriptor const** file_level_service_descriptors_dox_2fproto_2fdox_5fconf_2eproto = nullptr;

const ::PROTOBUF_NAMESPACE_ID::uint32 TableStruct_dox_2fproto_2fdox_5fconf_2eproto::offsets[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) = {
  PROTOBUF_FIELD_OFFSET(::senior::dox::proto::CyberConfig, _has_bits_),
  PROTOBUF_FIELD_OFFSET(::senior::dox::proto::CyberConfig, _internal_metadata_),
  ~0u,  // no _extensions_
  ~0u,  // no _oneof_case_
  ~0u,  // no _weak_field_map_
  PROTOBUF_FIELD_OFFSET(::senior::dox::proto::CyberConfig, scheduler_conf_),
  PROTOBUF_FIELD_OFFSET(::senior::dox::proto::CyberConfig, transport_conf_),
  PROTOBUF_FIELD_OFFSET(::senior::dox::proto::CyberConfig, run_mode_conf_),
  PROTOBUF_FIELD_OFFSET(::senior::dox::proto::CyberConfig, perf_conf_),
  0,
  1,
  2,
  3,
};
static const ::PROTOBUF_NAMESPACE_ID::internal::MigrationSchema schemas[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) = {
  { 0, 9, sizeof(::senior::dox::proto::CyberConfig)},
};

static ::PROTOBUF_NAMESPACE_ID::Message const * const file_default_instances[] = {
  reinterpret_cast<const ::PROTOBUF_NAMESPACE_ID::Message*>(&::senior::dox::proto::_CyberConfig_default_instance_),
};

const char descriptor_table_protodef_dox_2fproto_2fdox_5fconf_2eproto[] PROTOBUF_SECTION_VARIABLE(protodesc_cold) =
  "\n\030dox/proto/dox_conf.proto\022\020senior.dox.p"
  "roto\032\036dox/proto/scheduler_conf.proto\032\036do"
  "x/proto/transport_conf.proto\032\035dox/proto/"
  "run_mode_conf.proto\032\031dox/proto/perf_conf"
  ".proto\"\344\001\n\013CyberConfig\0227\n\016scheduler_conf"
  "\030\001 \001(\0132\037.senior.dox.proto.SchedulerConf\022"
  "7\n\016transport_conf\030\002 \001(\0132\037.senior.dox.pro"
  "to.TransportConf\0224\n\rrun_mode_conf\030\003 \001(\0132"
  "\035.senior.dox.proto.RunModeConf\022-\n\tperf_c"
  "onf\030\004 \001(\0132\032.senior.dox.proto.PerfConf"
  ;
static const ::PROTOBUF_NAMESPACE_ID::internal::DescriptorTable*const descriptor_table_dox_2fproto_2fdox_5fconf_2eproto_deps[4] = {
  &::descriptor_table_dox_2fproto_2fperf_5fconf_2eproto,
  &::descriptor_table_dox_2fproto_2frun_5fmode_5fconf_2eproto,
  &::descriptor_table_dox_2fproto_2fscheduler_5fconf_2eproto,
  &::descriptor_table_dox_2fproto_2ftransport_5fconf_2eproto,
};
static ::PROTOBUF_NAMESPACE_ID::internal::once_flag descriptor_table_dox_2fproto_2fdox_5fconf_2eproto_once;
const ::PROTOBUF_NAMESPACE_ID::internal::DescriptorTable descriptor_table_dox_2fproto_2fdox_5fconf_2eproto = {
  false, false, 397, descriptor_table_protodef_dox_2fproto_2fdox_5fconf_2eproto, "dox/proto/dox_conf.proto", 
  &descriptor_table_dox_2fproto_2fdox_5fconf_2eproto_once, descriptor_table_dox_2fproto_2fdox_5fconf_2eproto_deps, 4, 1,
  schemas, file_default_instances, TableStruct_dox_2fproto_2fdox_5fconf_2eproto::offsets,
  file_level_metadata_dox_2fproto_2fdox_5fconf_2eproto, file_level_enum_descriptors_dox_2fproto_2fdox_5fconf_2eproto, file_level_service_descriptors_dox_2fproto_2fdox_5fconf_2eproto,
};
PROTOBUF_ATTRIBUTE_WEAK const ::PROTOBUF_NAMESPACE_ID::internal::DescriptorTable* descriptor_table_dox_2fproto_2fdox_5fconf_2eproto_getter() {
  return &descriptor_table_dox_2fproto_2fdox_5fconf_2eproto;
}

// Force running AddDescriptors() at dynamic initialization time.
PROTOBUF_ATTRIBUTE_INIT_PRIORITY static ::PROTOBUF_NAMESPACE_ID::internal::AddDescriptorsRunner dynamic_init_dummy_dox_2fproto_2fdox_5fconf_2eproto(&descriptor_table_dox_2fproto_2fdox_5fconf_2eproto);
namespace senior {
namespace dox {
namespace proto {

// ===================================================================

class CyberConfig::_Internal {
 public:
  using HasBits = decltype(std::declval<CyberConfig>()._has_bits_);
  static const ::senior::dox::proto::SchedulerConf& scheduler_conf(const CyberConfig* msg);
  static void set_has_scheduler_conf(HasBits* has_bits) {
    (*has_bits)[0] |= 1u;
  }
  static const ::senior::dox::proto::TransportConf& transport_conf(const CyberConfig* msg);
  static void set_has_transport_conf(HasBits* has_bits) {
    (*has_bits)[0] |= 2u;
  }
  static const ::senior::dox::proto::RunModeConf& run_mode_conf(const CyberConfig* msg);
  static void set_has_run_mode_conf(HasBits* has_bits) {
    (*has_bits)[0] |= 4u;
  }
  static const ::senior::dox::proto::PerfConf& perf_conf(const CyberConfig* msg);
  static void set_has_perf_conf(HasBits* has_bits) {
    (*has_bits)[0] |= 8u;
  }
};

const ::senior::dox::proto::SchedulerConf&
CyberConfig::_Internal::scheduler_conf(const CyberConfig* msg) {
  return *msg->scheduler_conf_;
}
const ::senior::dox::proto::TransportConf&
CyberConfig::_Internal::transport_conf(const CyberConfig* msg) {
  return *msg->transport_conf_;
}
const ::senior::dox::proto::RunModeConf&
CyberConfig::_Internal::run_mode_conf(const CyberConfig* msg) {
  return *msg->run_mode_conf_;
}
const ::senior::dox::proto::PerfConf&
CyberConfig::_Internal::perf_conf(const CyberConfig* msg) {
  return *msg->perf_conf_;
}
void CyberConfig::clear_scheduler_conf() {
  if (scheduler_conf_ != nullptr) scheduler_conf_->Clear();
  _has_bits_[0] &= ~0x00000001u;
}
void CyberConfig::clear_transport_conf() {
  if (transport_conf_ != nullptr) transport_conf_->Clear();
  _has_bits_[0] &= ~0x00000002u;
}
void CyberConfig::clear_run_mode_conf() {
  if (run_mode_conf_ != nullptr) run_mode_conf_->Clear();
  _has_bits_[0] &= ~0x00000004u;
}
void CyberConfig::clear_perf_conf() {
  if (perf_conf_ != nullptr) perf_conf_->Clear();
  _has_bits_[0] &= ~0x00000008u;
}
CyberConfig::CyberConfig(::PROTOBUF_NAMESPACE_ID::Arena* arena,
                         bool is_message_owned)
  : ::PROTOBUF_NAMESPACE_ID::Message(arena, is_message_owned) {
  SharedCtor();
  if (!is_message_owned) {
    RegisterArenaDtor(arena);
  }
  // @@protoc_insertion_point(arena_constructor:senior.dox.proto.CyberConfig)
}
CyberConfig::CyberConfig(const CyberConfig& from)
  : ::PROTOBUF_NAMESPACE_ID::Message(),
      _has_bits_(from._has_bits_) {
  _internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
  if (from._internal_has_scheduler_conf()) {
    scheduler_conf_ = new ::senior::dox::proto::SchedulerConf(*from.scheduler_conf_);
  } else {
    scheduler_conf_ = nullptr;
  }
  if (from._internal_has_transport_conf()) {
    transport_conf_ = new ::senior::dox::proto::TransportConf(*from.transport_conf_);
  } else {
    transport_conf_ = nullptr;
  }
  if (from._internal_has_run_mode_conf()) {
    run_mode_conf_ = new ::senior::dox::proto::RunModeConf(*from.run_mode_conf_);
  } else {
    run_mode_conf_ = nullptr;
  }
  if (from._internal_has_perf_conf()) {
    perf_conf_ = new ::senior::dox::proto::PerfConf(*from.perf_conf_);
  } else {
    perf_conf_ = nullptr;
  }
  // @@protoc_insertion_point(copy_constructor:senior.dox.proto.CyberConfig)
}

inline void CyberConfig::SharedCtor() {
::memset(reinterpret_cast<char*>(this) + static_cast<size_t>(
    reinterpret_cast<char*>(&scheduler_conf_) - reinterpret_cast<char*>(this)),
    0, static_cast<size_t>(reinterpret_cast<char*>(&perf_conf_) -
    reinterpret_cast<char*>(&scheduler_conf_)) + sizeof(perf_conf_));
}

CyberConfig::~CyberConfig() {
  // @@protoc_insertion_point(destructor:senior.dox.proto.CyberConfig)
  if (GetArenaForAllocation() != nullptr) return;
  SharedDtor();
  _internal_metadata_.Delete<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>();
}

inline void CyberConfig::SharedDtor() {
  GOOGLE_DCHECK(GetArenaForAllocation() == nullptr);
  if (this != internal_default_instance()) delete scheduler_conf_;
  if (this != internal_default_instance()) delete transport_conf_;
  if (this != internal_default_instance()) delete run_mode_conf_;
  if (this != internal_default_instance()) delete perf_conf_;
}

void CyberConfig::ArenaDtor(void* object) {
  CyberConfig* _this = reinterpret_cast< CyberConfig* >(object);
  (void)_this;
}
void CyberConfig::RegisterArenaDtor(::PROTOBUF_NAMESPACE_ID::Arena*) {
}
void CyberConfig::SetCachedSize(int size) const {
  _cached_size_.Set(size);
}

void CyberConfig::Clear() {
// @@protoc_insertion_point(message_clear_start:senior.dox.proto.CyberConfig)
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  cached_has_bits = _has_bits_[0];
  if (cached_has_bits & 0x0000000fu) {
    if (cached_has_bits & 0x00000001u) {
      GOOGLE_DCHECK(scheduler_conf_ != nullptr);
      scheduler_conf_->Clear();
    }
    if (cached_has_bits & 0x00000002u) {
      GOOGLE_DCHECK(transport_conf_ != nullptr);
      transport_conf_->Clear();
    }
    if (cached_has_bits & 0x00000004u) {
      GOOGLE_DCHECK(run_mode_conf_ != nullptr);
      run_mode_conf_->Clear();
    }
    if (cached_has_bits & 0x00000008u) {
      GOOGLE_DCHECK(perf_conf_ != nullptr);
      perf_conf_->Clear();
    }
  }
  _has_bits_.Clear();
  _internal_metadata_.Clear<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>();
}

const char* CyberConfig::_InternalParse(const char* ptr, ::PROTOBUF_NAMESPACE_ID::internal::ParseContext* ctx) {
#define CHK_(x) if (PROTOBUF_PREDICT_FALSE(!(x))) goto failure
  _Internal::HasBits has_bits{};
  while (!ctx->Done(&ptr)) {
    ::PROTOBUF_NAMESPACE_ID::uint32 tag;
    ptr = ::PROTOBUF_NAMESPACE_ID::internal::ReadTag(ptr, &tag);
    switch (tag >> 3) {
      // optional .senior.dox.proto.SchedulerConf scheduler_conf = 1;
      case 1:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 10)) {
          ptr = ctx->ParseMessage(_internal_mutable_scheduler_conf(), ptr);
          CHK_(ptr);
        } else goto handle_unusual;
        continue;
      // optional .senior.dox.proto.TransportConf transport_conf = 2;
      case 2:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 18)) {
          ptr = ctx->ParseMessage(_internal_mutable_transport_conf(), ptr);
          CHK_(ptr);
        } else goto handle_unusual;
        continue;
      // optional .senior.dox.proto.RunModeConf run_mode_conf = 3;
      case 3:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 26)) {
          ptr = ctx->ParseMessage(_internal_mutable_run_mode_conf(), ptr);
          CHK_(ptr);
        } else goto handle_unusual;
        continue;
      // optional .senior.dox.proto.PerfConf perf_conf = 4;
      case 4:
        if (PROTOBUF_PREDICT_TRUE(static_cast<::PROTOBUF_NAMESPACE_ID::uint8>(tag) == 34)) {
          ptr = ctx->ParseMessage(_internal_mutable_perf_conf(), ptr);
          CHK_(ptr);
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

::PROTOBUF_NAMESPACE_ID::uint8* CyberConfig::_InternalSerialize(
    ::PROTOBUF_NAMESPACE_ID::uint8* target, ::PROTOBUF_NAMESPACE_ID::io::EpsCopyOutputStream* stream) const {
  // @@protoc_insertion_point(serialize_to_array_start:senior.dox.proto.CyberConfig)
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  cached_has_bits = _has_bits_[0];
  // optional .senior.dox.proto.SchedulerConf scheduler_conf = 1;
  if (cached_has_bits & 0x00000001u) {
    target = stream->EnsureSpace(target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::
      InternalWriteMessage(
        1, _Internal::scheduler_conf(this), target, stream);
  }

  // optional .senior.dox.proto.TransportConf transport_conf = 2;
  if (cached_has_bits & 0x00000002u) {
    target = stream->EnsureSpace(target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::
      InternalWriteMessage(
        2, _Internal::transport_conf(this), target, stream);
  }

  // optional .senior.dox.proto.RunModeConf run_mode_conf = 3;
  if (cached_has_bits & 0x00000004u) {
    target = stream->EnsureSpace(target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::
      InternalWriteMessage(
        3, _Internal::run_mode_conf(this), target, stream);
  }

  // optional .senior.dox.proto.PerfConf perf_conf = 4;
  if (cached_has_bits & 0x00000008u) {
    target = stream->EnsureSpace(target);
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::
      InternalWriteMessage(
        4, _Internal::perf_conf(this), target, stream);
  }

  if (PROTOBUF_PREDICT_FALSE(_internal_metadata_.have_unknown_fields())) {
    target = ::PROTOBUF_NAMESPACE_ID::internal::WireFormat::InternalSerializeUnknownFieldsToArray(
        _internal_metadata_.unknown_fields<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(::PROTOBUF_NAMESPACE_ID::UnknownFieldSet::default_instance), target, stream);
  }
  // @@protoc_insertion_point(serialize_to_array_end:senior.dox.proto.CyberConfig)
  return target;
}

size_t CyberConfig::ByteSizeLong() const {
// @@protoc_insertion_point(message_byte_size_start:senior.dox.proto.CyberConfig)
  size_t total_size = 0;

  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  // Prevent compiler warnings about cached_has_bits being unused
  (void) cached_has_bits;

  cached_has_bits = _has_bits_[0];
  if (cached_has_bits & 0x0000000fu) {
    // optional .senior.dox.proto.SchedulerConf scheduler_conf = 1;
    if (cached_has_bits & 0x00000001u) {
      total_size += 1 +
        ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::MessageSize(
          *scheduler_conf_);
    }

    // optional .senior.dox.proto.TransportConf transport_conf = 2;
    if (cached_has_bits & 0x00000002u) {
      total_size += 1 +
        ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::MessageSize(
          *transport_conf_);
    }

    // optional .senior.dox.proto.RunModeConf run_mode_conf = 3;
    if (cached_has_bits & 0x00000004u) {
      total_size += 1 +
        ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::MessageSize(
          *run_mode_conf_);
    }

    // optional .senior.dox.proto.PerfConf perf_conf = 4;
    if (cached_has_bits & 0x00000008u) {
      total_size += 1 +
        ::PROTOBUF_NAMESPACE_ID::internal::WireFormatLite::MessageSize(
          *perf_conf_);
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

const ::PROTOBUF_NAMESPACE_ID::Message::ClassData CyberConfig::_class_data_ = {
    ::PROTOBUF_NAMESPACE_ID::Message::CopyWithSizeCheck,
    CyberConfig::MergeImpl
};
const ::PROTOBUF_NAMESPACE_ID::Message::ClassData*CyberConfig::GetClassData() const { return &_class_data_; }

void CyberConfig::MergeImpl(::PROTOBUF_NAMESPACE_ID::Message*to,
                      const ::PROTOBUF_NAMESPACE_ID::Message&from) {
  static_cast<CyberConfig *>(to)->MergeFrom(
      static_cast<const CyberConfig &>(from));
}


void CyberConfig::MergeFrom(const CyberConfig& from) {
// @@protoc_insertion_point(class_specific_merge_from_start:senior.dox.proto.CyberConfig)
  GOOGLE_DCHECK_NE(&from, this);
  ::PROTOBUF_NAMESPACE_ID::uint32 cached_has_bits = 0;
  (void) cached_has_bits;

  cached_has_bits = from._has_bits_[0];
  if (cached_has_bits & 0x0000000fu) {
    if (cached_has_bits & 0x00000001u) {
      _internal_mutable_scheduler_conf()->::senior::dox::proto::SchedulerConf::MergeFrom(from._internal_scheduler_conf());
    }
    if (cached_has_bits & 0x00000002u) {
      _internal_mutable_transport_conf()->::senior::dox::proto::TransportConf::MergeFrom(from._internal_transport_conf());
    }
    if (cached_has_bits & 0x00000004u) {
      _internal_mutable_run_mode_conf()->::senior::dox::proto::RunModeConf::MergeFrom(from._internal_run_mode_conf());
    }
    if (cached_has_bits & 0x00000008u) {
      _internal_mutable_perf_conf()->::senior::dox::proto::PerfConf::MergeFrom(from._internal_perf_conf());
    }
  }
  _internal_metadata_.MergeFrom<::PROTOBUF_NAMESPACE_ID::UnknownFieldSet>(from._internal_metadata_);
}

void CyberConfig::CopyFrom(const CyberConfig& from) {
// @@protoc_insertion_point(class_specific_copy_from_start:senior.dox.proto.CyberConfig)
  if (&from == this) return;
  Clear();
  MergeFrom(from);
}

bool CyberConfig::IsInitialized() const {
  if (_internal_has_scheduler_conf()) {
    if (!scheduler_conf_->IsInitialized()) return false;
  }
  return true;
}

void CyberConfig::InternalSwap(CyberConfig* other) {
  using std::swap;
  _internal_metadata_.InternalSwap(&other->_internal_metadata_);
  swap(_has_bits_[0], other->_has_bits_[0]);
  ::PROTOBUF_NAMESPACE_ID::internal::memswap<
      PROTOBUF_FIELD_OFFSET(CyberConfig, perf_conf_)
      + sizeof(CyberConfig::perf_conf_)
      - PROTOBUF_FIELD_OFFSET(CyberConfig, scheduler_conf_)>(
          reinterpret_cast<char*>(&scheduler_conf_),
          reinterpret_cast<char*>(&other->scheduler_conf_));
}

::PROTOBUF_NAMESPACE_ID::Metadata CyberConfig::GetMetadata() const {
  return ::PROTOBUF_NAMESPACE_ID::internal::AssignDescriptors(
      &descriptor_table_dox_2fproto_2fdox_5fconf_2eproto_getter, &descriptor_table_dox_2fproto_2fdox_5fconf_2eproto_once,
      file_level_metadata_dox_2fproto_2fdox_5fconf_2eproto[0]);
}

// @@protoc_insertion_point(namespace_scope)
}  // namespace proto
}  // namespace dox
}  // namespace senior
PROTOBUF_NAMESPACE_OPEN
template<> PROTOBUF_NOINLINE ::senior::dox::proto::CyberConfig* Arena::CreateMaybeMessage< ::senior::dox::proto::CyberConfig >(Arena* arena) {
  return Arena::CreateMessageInternal< ::senior::dox::proto::CyberConfig >(arena);
}
PROTOBUF_NAMESPACE_CLOSE

// @@protoc_insertion_point(global_scope)
#include <google/protobuf/port_undef.inc>
