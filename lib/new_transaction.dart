import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
final titleController = TextEditingController();
final amountController = TextEditingController();
final Function addTx;

NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return  Card(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter title',
                        ),
                        controller: titleController,
                     ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Enter amount'),
                       controller: amountController,
                    ),
                    FlatButton(
                      child: Text('Add transaction'),
                      onPressed: () {
                        addTx(titleController.text, double.parse(amountController.text),
                        );
                      },
                    ),
                  ],
                ),
              ),
            );
  }
}