import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_issue_tracker/src/core/generated/fonts.gen.dart';

part 'typography.freezed.dart';

@freezed
class UITextStyle with _$UITextStyle {
  const factory UITextStyle({
    @Default(
      TextStyle(
        fontFamily: FontFamily.sourceSansPro,
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    )
    TextStyle headlineRSS24,
    @Default(
      TextStyle(
        fontFamily: FontFamily.sourceSansPro,
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    )
    TextStyle paragraphRSS17,
    @Default(
      TextStyle(
        fontFamily: FontFamily.sourceSansPro,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    )
    TextStyle paragraphRSS14,
    @Default(
      TextStyle(
        fontFamily: FontFamily.sourceCodePro,
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: Colors.white,
      ),
    )
    TextStyle paragraphRSC12,
    @Default(
      TextStyle(
        fontFamily: FontFamily.roboto,
        fontSize: 17,
        fontWeight: FontWeight.w400,
        height: 22 / 17,
        color: Colors.white,
      ),
    )
    TextStyle paragraphRR17,
  }) = _UITextStyle;
}
