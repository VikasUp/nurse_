// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DashBoardResponse _$DashBoardResponseFromJson(Map<String, dynamic> json) {
  return _DashBoardResponse.fromJson(json);
}

/// @nodoc
mixin _$DashBoardResponse {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DashBoardResponseCopyWith<DashBoardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashBoardResponseCopyWith<$Res> {
  factory $DashBoardResponseCopyWith(
          DashBoardResponse value, $Res Function(DashBoardResponse) then) =
      _$DashBoardResponseCopyWithImpl<$Res, DashBoardResponse>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$DashBoardResponseCopyWithImpl<$Res, $Val extends DashBoardResponse>
    implements $DashBoardResponseCopyWith<$Res> {
  _$DashBoardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashBoardResponseImplCopyWith<$Res>
    implements $DashBoardResponseCopyWith<$Res> {
  factory _$$DashBoardResponseImplCopyWith(_$DashBoardResponseImpl value,
          $Res Function(_$DashBoardResponseImpl) then) =
      __$$DashBoardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$DashBoardResponseImplCopyWithImpl<$Res>
    extends _$DashBoardResponseCopyWithImpl<$Res, _$DashBoardResponseImpl>
    implements _$$DashBoardResponseImplCopyWith<$Res> {
  __$$DashBoardResponseImplCopyWithImpl(_$DashBoardResponseImpl _value,
      $Res Function(_$DashBoardResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$DashBoardResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DashBoardResponseImpl implements _DashBoardResponse {
  const _$DashBoardResponseImpl({this.id, this.name});

  factory _$DashBoardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DashBoardResponseImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'DashBoardResponse(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashBoardResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DashBoardResponseImplCopyWith<_$DashBoardResponseImpl> get copyWith =>
      __$$DashBoardResponseImplCopyWithImpl<_$DashBoardResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DashBoardResponseImplToJson(
      this,
    );
  }
}

abstract class _DashBoardResponse implements DashBoardResponse {
  const factory _DashBoardResponse({final int? id, final String? name}) =
      _$DashBoardResponseImpl;

  factory _DashBoardResponse.fromJson(Map<String, dynamic> json) =
      _$DashBoardResponseImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$DashBoardResponseImplCopyWith<_$DashBoardResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
