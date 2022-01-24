import 'package:airplane/models/destinationModel.dart';
import 'package:equatable/equatable.dart';

class TransactionModel extends Equatable {
  final DestinationModel destinations;
  final int amountOfTraveler;
  final String selectedSeat;
  final bool insurence;
  final bool refunable;
  final double vat;
  final int price;
  final int grandTotal;

  TransactionModel(
      {required this.destinations,
      this.amountOfTraveler = 0,
      this.selectedSeat = '',
      this.insurence = false,
      this.refunable = false,
      this.vat = 0,
      this.price = 0,
      this.grandTotal = 0});

  @override
  List<Object?> get props => [destinations,amountOfTraveler,selectedSeat,insurence,refunable,vat,price,grandTotal];
}
