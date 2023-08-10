import 'package:freezed_annotation/freezed_annotation.dart';

import 'colors.dart';
import 'typography.dart';

part 'data.freezed.dart';

@freezed
class UIThemeData with _$UIThemeData {
  const factory UIThemeData({
    @Default(UIColor()) UIColor color,
    @Default(UITextStyle()) UITextStyle textStyle,
  }) = _UIThemeData;
}
