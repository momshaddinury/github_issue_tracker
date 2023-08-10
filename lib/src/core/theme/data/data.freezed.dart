// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UIThemeData {
  UIColor get color => throw _privateConstructorUsedError;

  UITextStyle get textStyle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UIThemeDataCopyWith<UIThemeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UIThemeDataCopyWith<$Res> {
  factory $UIThemeDataCopyWith(
          UIThemeData value, $Res Function(UIThemeData) then) =
      _$UIThemeDataCopyWithImpl<$Res, UIThemeData>;

  @useResult
  $Res call({UIColor color, UITextStyle textStyle});

  $UIColorCopyWith<$Res> get color;

  $UITextStyleCopyWith<$Res> get textStyle;
}

/// @nodoc
class _$UIThemeDataCopyWithImpl<$Res, $Val extends UIThemeData>
    implements $UIThemeDataCopyWith<$Res> {
  _$UIThemeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? textStyle = null,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as UIColor,
      textStyle: null == textStyle
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as UITextStyle,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UIColorCopyWith<$Res> get color {
    return $UIColorCopyWith<$Res>(_value.color, (value) {
      return _then(_value.copyWith(color: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UITextStyleCopyWith<$Res> get textStyle {
    return $UITextStyleCopyWith<$Res>(_value.textStyle, (value) {
      return _then(_value.copyWith(textStyle: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UIThemeDataCopyWith<$Res>
    implements $UIThemeDataCopyWith<$Res> {
  factory _$$_UIThemeDataCopyWith(
          _$_UIThemeData value, $Res Function(_$_UIThemeData) then) =
      __$$_UIThemeDataCopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({UIColor color, UITextStyle textStyle});

  @override
  $UIColorCopyWith<$Res> get color;

  @override
  $UITextStyleCopyWith<$Res> get textStyle;
}

/// @nodoc
class __$$_UIThemeDataCopyWithImpl<$Res>
    extends _$UIThemeDataCopyWithImpl<$Res, _$_UIThemeData>
    implements _$$_UIThemeDataCopyWith<$Res> {
  __$$_UIThemeDataCopyWithImpl(
      _$_UIThemeData _value, $Res Function(_$_UIThemeData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? textStyle = null,
  }) {
    return _then(_$_UIThemeData(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as UIColor,
      textStyle: null == textStyle
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as UITextStyle,
    ));
  }
}

/// @nodoc

class _$_UIThemeData implements _UIThemeData {
  const _$_UIThemeData(
      {this.color = const UIColor(), this.textStyle = const UITextStyle()});

  @override
  @JsonKey()
  final UIColor color;
  @override
  @JsonKey()
  final UITextStyle textStyle;

  @override
  String toString() {
    return 'UIThemeData(color: $color, textStyle: $textStyle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UIThemeData &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.textStyle, textStyle) ||
                other.textStyle == textStyle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color, textStyle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UIThemeDataCopyWith<_$_UIThemeData> get copyWith =>
      __$$_UIThemeDataCopyWithImpl<_$_UIThemeData>(this, _$identity);
}

abstract class _UIThemeData implements UIThemeData {
  const factory _UIThemeData(
      {final UIColor color, final UITextStyle textStyle}) = _$_UIThemeData;

  @override
  UIColor get color;

  @override
  UITextStyle get textStyle;

  @override
  @JsonKey(ignore: true)
  _$$_UIThemeDataCopyWith<_$_UIThemeData> get copyWith =>
      throw _privateConstructorUsedError;
}
