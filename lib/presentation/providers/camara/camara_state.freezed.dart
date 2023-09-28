// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camara_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CamaraState {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CamaraStateCopyWith<CamaraState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CamaraStateCopyWith<$Res> {
  factory $CamaraStateCopyWith(
          CamaraState value, $Res Function(CamaraState) then) =
      _$CamaraStateCopyWithImpl<$Res, CamaraState>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class _$CamaraStateCopyWithImpl<$Res, $Val extends CamaraState>
    implements $CamaraStateCopyWith<$Res> {
  _$CamaraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CamaraStateImplCopyWith<$Res>
    implements $CamaraStateCopyWith<$Res> {
  factory _$$CamaraStateImplCopyWith(
          _$CamaraStateImpl value, $Res Function(_$CamaraStateImpl) then) =
      __$$CamaraStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$CamaraStateImplCopyWithImpl<$Res>
    extends _$CamaraStateCopyWithImpl<$Res, _$CamaraStateImpl>
    implements _$$CamaraStateImplCopyWith<$Res> {
  __$$CamaraStateImplCopyWithImpl(
      _$CamaraStateImpl _value, $Res Function(_$CamaraStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$CamaraStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CamaraStateImpl implements _CamaraState {
  _$CamaraStateImpl({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'CamaraState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CamaraStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CamaraStateImplCopyWith<_$CamaraStateImpl> get copyWith =>
      __$$CamaraStateImplCopyWithImpl<_$CamaraStateImpl>(this, _$identity);
}

abstract class _CamaraState implements CamaraState {
  factory _CamaraState({final bool isLoading}) = _$CamaraStateImpl;

  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$CamaraStateImplCopyWith<_$CamaraStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
