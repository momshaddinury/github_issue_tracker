import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_issue_tracker/src/core/constants/strings.dart';
import 'package:github_issue_tracker/src/core/extension/context.dart';
import 'package:github_issue_tracker/src/core/router/routers.dart';
import 'package:github_issue_tracker/src/core/state/base_state.dart';
import 'package:github_issue_tracker/src/feature/issues/domain/entity/issue_entity.dart';
import 'package:github_issue_tracker/src/feature/issues/presentation/riverpod/providers.dart';
import 'package:github_issue_tracker/src/feature/issues/presentation/widget/issues_loading_shimmer.dart';
import 'package:go_router/go_router.dart';

part '../widget/issue_card.dart';
part '../widget/issue_list_builder.dart';

class IssueListPage extends ConsumerStatefulWidget {
  const IssueListPage({Key? key}) : super(key: key);

  @override
  ConsumerState<IssueListPage> createState() => _IssuesListPageState();
}

class _IssuesListPageState extends ConsumerState<IssueListPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(issuesProvider.notifier).issueList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(issuesProvider);

    return Scaffold(
      backgroundColor: context.color.jet,
      body: SafeArea(
        child: Column(
          children: [
            // TODO: Refactor this widget
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 11.h),
              child: Row(
                children: [
                  Text(
                    Strings.flutterIssueList,
                    style: context.textStyle.paragraphRR17,
                  ),
                  SizedBox(width: 16.w),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 2.h,
                    ),
                    decoration: BoxDecoration(
                      color: context.color.davysGray,
                      borderRadius: BorderRadius.circular(26.r),
                    ),
                    child: Text(
                      Strings.master,
                      style: context.textStyle.paragraphRR17,
                    ),
                  ),
                ],
              ),
            ),
            state is LoadingState
                ? const Expanded(child: IssuesLoadingShimmer())
                : state is SuccessState<List<IssueEntity>>
                    ? Expanded(
                        child: RefreshIndicator(
                          onRefresh: _onRefresh,
                          child: _IssueListBuilder(products: state.data!),
                        ),
                      )
                    : const Center(child: Text(Strings.somethingWentWrong)),
          ],
        ),
      ),
    );
  }

  Future<void> _onRefresh() async {
    await ref.read(issuesProvider.notifier).issueList();
  }
}
