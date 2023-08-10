import 'package:flutter/material.dart';
import 'package:github_issue_tracker/src/core/theme/data/colors.dart';
import 'package:github_issue_tracker/src/core/theme/data/data.dart';
import 'package:github_issue_tracker/src/core/theme/data/typography.dart';
import 'package:github_issue_tracker/src/core/theme/theme.dart';

extension ContextExtension on BuildContext {
  UIThemeData get theme => GITTheme.of(this);

  UIColor get color => theme.color;

  UITextStyle get textStyle => theme.textStyle;
}
