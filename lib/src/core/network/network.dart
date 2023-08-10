import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:network/network.dart';

final networkProvider = Provider(
  (ref) {
    return RestClient(
      baseUrl: 'https://api.github.com/',
      token:
          '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',
    );
  },
);
