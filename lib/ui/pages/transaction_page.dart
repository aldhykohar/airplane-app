import 'package:airplane/cubit/transaction_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widget/transaction_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({Key? key}) : super(key: key);

  @override
  _TransactionPageState createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  @override
  void initState() {
    context.read<TransactionCubit>().fetchTransaction();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (context, state) {
        print(state);
        if (state is TransactionLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state is TransactionSuccess) {
          if (state.transactions.length == 0) {
            return Center(
              child: Text('You Don\'t Have Transaction'),
            );
          } else {
            return ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                itemCount: state.transactions.length,
                itemBuilder: (context, index) {
                  return TransactionCard(state.transactions[index]);
                });
          }
        }

        if (state is TransactionFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: kRedColor, content: Text(state.error)));
        }

        return Center(
          child: Text('Transaction Page'),
        );
      },
    );
  }
}
