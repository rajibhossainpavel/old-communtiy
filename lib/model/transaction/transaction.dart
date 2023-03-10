import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction.freezed.dart';

part 'transaction.g.dart';

@freezed
class Transaction with _$Transaction {
  const factory Transaction({
    @Default('') String createdAt,
    @Default('') String kind,
    @Default('') String kindName,
    @Default(0) int delta,
  }) = _Transaction;

  const Transaction._();

  factory Transaction.fromJson(Map<String, dynamic> json) =>
      _$TransactionFromJson(json);

  String get deltaString {
    if (delta >= 0) {
      return '+ $delta';
    }

    return '- ${delta.abs()}';
  }
}
