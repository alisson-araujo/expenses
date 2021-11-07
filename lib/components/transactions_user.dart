import 'package:flutter/material.dart';
import 'transactions_form.dart';
import 'transactions_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Tênis',
      value: 220.50,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Calça',
      value: 170.00,
      date: DateTime.now(),
    )
  ];  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionsForm(),
      ],
    );
  }
}