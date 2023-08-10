part of '../pages/issue_list_page.dart';

class _IssueListBuilder extends StatelessWidget {
  const _IssueListBuilder({
    required this.products,
  });

  final List<IssueEntity> products;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        /// This might feel redundant to use a provider to pass
        /// data to class, when we can just use prop-drilling to
        /// pass the data.
        /// But, this is recommended way as you can declare the class
        /// as const, which will improve performance.

        return ProviderScope(
          overrides: [
            issueDataProvider.overrideWithValue(
              products[index],
            ),
          ],
          child: const _IssueCard(),
        );
      },
      padding: EdgeInsets.zero,
    );
  }
}
