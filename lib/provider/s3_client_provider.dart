import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:oshiruco_app/client/s3_client/s3_client.dart';
import 'package:oshiruco_app/provider/application_initialize_provider.dart';

import 'api_client_provider.dart';

final s3ClientProvider = Provider(
  (ref) => S3Client(
    uuid: ref.watch(applicationInitializeProvider).information?.uuid ?? '',
    client: ref.read(oshirucoClientProvider),
  ),
);
