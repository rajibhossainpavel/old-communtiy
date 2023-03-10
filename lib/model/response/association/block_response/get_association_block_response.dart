import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/block/block.dart';

part 'get_association_block_response.freezed.dart';
part 'get_association_block_response.g.dart';

@freezed
class GetAssociationBlockResponse with _$GetAssociationBlockResponse {
  const factory GetAssociationBlockResponse({
    @Default('') String result,
    @Default('') String token,
    @Default(<Block>[]) List<Block> blocks,
  }) = _GetAssociationBlockResponse;

  const GetAssociationBlockResponse._();

  factory GetAssociationBlockResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAssociationBlockResponseFromJson(json);
}
