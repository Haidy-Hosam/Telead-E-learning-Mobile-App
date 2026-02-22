import 'package:e_learning_mobile_app/Core/Style/Appcolors.dart';
import 'package:e_learning_mobile_app/Features/Transaction/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionView extends StatefulWidget {
  const TransactionView({super.key});

  @override
  State<TransactionView> createState() => _TransactionViewState();
}

class _TransactionViewState extends State<TransactionView> {
  int curTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 12,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back),
                      ),
                      Text('Transactions'),
                    ],
                  ),
                  Icon(Icons.search),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                  itemCount: 8,
                  itemBuilder: (context, index) => TransactionItem(
                    title: 'Build Personal Branding',
                    subTitle: 'Web Designer',
                  ),
                  separatorBuilder: (context, index) =>
                      Divider(color: AppColors.lightGreenColor, thickness: 2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
