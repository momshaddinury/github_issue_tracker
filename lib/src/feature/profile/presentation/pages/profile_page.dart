import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:github_issue_tracker/src/core/extension/context.dart';
import 'package:github_issue_tracker/src/feature/profile/domain/entities/profile_entity.dart';
import 'package:github_issue_tracker/src/feature/profile/presentation/riverpod/profile_provider.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({Key? key, required this.username}) : super(key: key);

  final String username;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileProvider(username));

    return Scaffold(
        backgroundColor: context.color.jet,
        appBar: AppBar(
          backgroundColor: context.color.jet,
          elevation: 0,
        ),
        body: state.when(
          data: (profile) {
            return _ProfileView(
              data: profile!,
            );
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) {
            return const Center(child: Text('Error'));
          },
        ));
  }
}

class _ProfileView extends StatelessWidget {
  const _ProfileView({
    super.key,
    required this.data,
  });

  final ProfileEntity data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.sp),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Center(
            child: CircleAvatar(
              radius: 84.r,
              backgroundColor: context.color.davysGray,
              backgroundImage: NetworkImage(data.avatarUrl),
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            data.name,
            style: context.textStyle.headlineRSS24,
          ),
          SizedBox(height: 4.h),
          Text(
            '@${data.login}',
            style: context.textStyle.paragraphRSS14.copyWith(
              color: context.color.silver,
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'Bio: ${data.bio}',
            style: context.textStyle.paragraphRR17,
          ),
          SizedBox(height: 16.h),
          Text(
            'Public Repos: ${data.publicRepos}',
            style: context.textStyle.paragraphRR17,
          ),
          SizedBox(height: 8.h),
          Text(
            'Public Gists: ${data.publicGists}',
            style: context.textStyle.paragraphRR17,
          ),
          SizedBox(height: 8.h),
          Text(
            'Followers: ${data.followers}',
            style: context.textStyle.paragraphRR17,
          ),
        ],
      ),
    );
  }
}
