part of '../pages/issue_list_page.dart';

class _IssueCard extends ConsumerWidget {
  const _IssueCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ref) {
    IssueEntity data = ref.read(issueDataProvider);

    return GestureDetector(
      onTap: () {
        ref.read(issueDetailsProvider.notifier).state = data.htmlUrl;
        _navigateToIssueDetailsPage(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: context.color.onyx, width: 1),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Flexible(
                  child: Text(
                    data.title,
                    style: context.textStyle.paragraphRSS17,
                  ),
                ),
                SizedBox(width: 12.w),
                Text(
                  '18:14',
                  style: context.textStyle.paragraphRSC12,
                ),
              ],
            ),
            SizedBox(height: 8.h),
            GestureDetector(
              onTap: () => _navigateToProfilePage(context, data.user.login),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 10.r,
                    backgroundColor: context.color.davysGray,
                    backgroundImage: NetworkImage(data.user.avatarUrl),
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    data.user.login,
                    style: context.textStyle.paragraphRSC12.copyWith(
                      color: context.color.battleshipGray,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _navigateToIssueDetailsPage(BuildContext context) {
    context.goNamed(Routes.issueDetails.name);
  }

  void _navigateToProfilePage(
    BuildContext context,
    String username,
  ) {
    context.goNamed(
      Routes.profile.name,
      queryParameters: <String, String>{
        'username': username,
      },
    );
  }
}
