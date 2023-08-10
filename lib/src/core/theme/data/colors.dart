import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'colors.freezed.dart';

@freezed
class UIColor with _$UIColor {
  const factory UIColor({
    @Default(Colors.transparent) Color transparent,
    @Default(Colors.black) Color black,
    @Default(Colors.white) Color white,
    @Default(Color(0xFF9B9B9B)) Color battleshipGray,
    @Default(Color(0xFFB8B8B8)) Color silver,
    @Default(Color(0xFF404040)) Color onyx,
    @Default(Color(0xFF333333)) Color jet,
    @Default(Color(0xFF515050)) Color davysGray,
  }) = _UIColor;
}
