import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:oshiruco_app/model/transaction/transaction.dart';

part 'points_transaction_response.freezed.dart';
part 'points_transaction_response.g.dart';

@freezed
class PointsTransactionResponse with _$PointsTransactionResponse {
  const factory PointsTransactionResponse({
    @Default('') String result,
    @Default('') String uuid,
    @Default(<Transaction>[]) List<Transaction> transactions,
    @Default('') String token,
  }) = _PointsTransactionResponse;

  const PointsTransactionResponse._();

  factory PointsTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$PointsTransactionResponseFromJson(json);
}
