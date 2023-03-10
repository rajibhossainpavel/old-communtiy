import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:oshiruco_app/repository/association_repository.dart';
import 'package:oshiruco_app/state/block_state.dart';

class BlockController extends StateNotifier<BlockState> {
  BlockController({
    required this.associationRepository,
  }) : super(const BlockState()) {
    _fetchBlocks();
  }

  final AssociationRepository associationRepository;

  Future<void> _fetchBlocks() async {
    final users = await associationRepository.listBlockUsers();
    state = state.copyWith(blockUsers: users);
  }
}
