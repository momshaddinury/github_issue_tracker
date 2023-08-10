import 'package:flutter/material.dart';
import 'package:github_issue_tracker/src/core/extension/context.dart';

class IssuesLoadingShimmer extends StatelessWidget {
  const IssuesLoadingShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.vertical,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: 300,
                        color: context.color.davysGray,
                      ),
                      const SizedBox(height: 8),
                      Container(
                        height: 20,
                        width: 150,
                        color: context.color.davysGray,
                      ),
                    ],
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 20,
                    width: 40,
                    color: context.color.davysGray,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: context.color.davysGray,
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 20,
                    width: 100,
                    color: context.color.davysGray,
                  ),
                ],
              )
            ],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(width: 8);
      },
    );
  }
}
