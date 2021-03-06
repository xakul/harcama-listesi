import 'package:flutter/material.dart';
import 'package:widget_example/new_transaction.dart';
import 'package:widget_example/transaction_list.dart';
import './transaction.dart';
import './transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {

   final List <Transaction> _userTransaction = [ Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Food',
      amount: 16.99,
      date: DateTime.now(),
    ),];
  
void _addNewTransaction(String txTitle, double txAmount) {
  final newTx = Transaction(
    title : txTitle,
     amount : txAmount,
      date : DateTime.now(),
      id : DateTime.now().toString());

setState(() {
  _userTransaction.add(newTx);
});



}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewTransaction(_addNewTransaction),TransactionList(_userTransaction) ],
    );
  }
}