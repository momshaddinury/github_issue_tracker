import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_issue_tracker/src/core/extension/context.dart';
import 'package:github_issue_tracker/src/feature/issues/presentation/riverpod/providers.dart';
import 'package:webview_flutter/webview_flutter.dart';

class IssueDetailsPage extends ConsumerStatefulWidget {
  const IssueDetailsPage({super.key});

  @override
  ConsumerState<IssueDetailsPage> createState() => _IssueDetailsPageState();
}

class _IssueDetailsPageState extends ConsumerState<IssueDetailsPage> {
  late WebViewController _controller;

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
        ),
      )
      ..loadRequest(
        Uri.parse(ref.read(issueDetailsProvider.notifier).state!),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.white,
      appBar: AppBar(
        backgroundColor: context.color.jet,
        elevation: 0,
      ),
      body: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}
