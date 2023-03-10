import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/block/block.dart';

part 'block_state.freezed.dart';

@freezed
class BlockState with _$BlockState {
  const factory BlockState({
    @Default(null) List<Block>? blockUsers,
  }) = _BlockState;

  const BlockState._();
}
