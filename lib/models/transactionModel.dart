import 'package:airplane/models/destinationModel.dart';
import 'package:equatable/equatable.dart';

class TransactionModel extends Equatable {
  final DestinationModel destinations;
  final int amountOfTraveler;
  final String selectedSeat;
  final bool insurance;
  final bool refundable;
  final double vat;
  final int price;
  final int grandTotal;

  TransactionModel(
      {required this.destinations,
      this.amountOfTraveler = 0,
      this.selectedSeat = '',
      this.insurance = false,
      this.refundable = false,
      this.vat = 0,
      this.price = 0,
      this.grandTotal = 0});

  @override
  List<Object?> get props => [destinations,amountOfTraveler,selectedSeat,insurance,refundable,vat,price,grandTotal];
}
