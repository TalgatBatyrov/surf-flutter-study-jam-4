// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'magic_ball.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MagicBall _$MagicBallFromJson(Map<String, dynamic> json) {
  return _MagicBall.fromJson(json);
}

/// @nodoc
mixin _$MagicBall {
  @JsonKey(name: 'reading')
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MagicBallCopyWith<MagicBall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MagicBallCopyWith<$Res> {
  factory $MagicBallCopyWith(MagicBall value, $Res Function(MagicBall) then) =
      _$MagicBallCopyWithImpl<$Res, MagicBall>;
  @useResult
  $Res call({@JsonKey(name: 'reading') String answer});
}

/// @nodoc
class _$MagicBallCopyWithImpl<$Res, $Val extends MagicBall>
    implements $MagicBallCopyWith<$Res> {
  _$MagicBallCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MagicBallCopyWith<$Res> implements $MagicBallCopyWith<$Res> {
  factory _$$_MagicBallCopyWith(
          _$_MagicBall value, $Res Function(_$_MagicBall) then) =
      __$$_MagicBallCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'reading') String answer});
}

/// @nodoc
class __$$_MagicBallCopyWithImpl<$Res>
    extends _$MagicBallCopyWithImpl<$Res, _$_MagicBall>
    implements _$$_MagicBallCopyWith<$Res> {
  __$$_MagicBallCopyWithImpl(
      _$_MagicBall _value, $Res Function(_$_MagicBall) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answer = null,
  }) {
    return _then(_$_MagicBall(
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MagicBall implements _MagicBall {
  const _$_MagicBall({@JsonKey(name: 'reading') required this.answer});

  factory _$_MagicBall.fromJson(Map<String, dynamic> json) =>
      _$$_MagicBallFromJson(json);

  @override
  @JsonKey(name: 'reading')
  final String answer;

  @override
  String toString() {
    return 'MagicBall(answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MagicBall &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MagicBallCopyWith<_$_MagicBall> get copyWith =>
      __$$_MagicBallCopyWithImpl<_$_MagicBall>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MagicBallToJson(
      this,
    );
  }
}

abstract class _MagicBall implements MagicBall {
  const factory _MagicBall(
      {@JsonKey(name: 'reading') required final String answer}) = _$_MagicBall;

  factory _MagicBall.fromJson(Map<String, dynamic> json) =
      _$_MagicBall.fromJson;

  @override
  @JsonKey(name: 'reading')
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$_MagicBallCopyWith<_$_MagicBall> get copyWith =>
      throw _privateConstructorUsedError;
}
