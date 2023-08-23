import 'package:bano_qabil_project/widget/customText.dart';
import 'package:bano_qabil_project/widget/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderPayment extends StatefulWidget {
  const OrderPayment({super.key});

  @override
  State<OrderPayment> createState() => _OrderPaymentState();
}

class _OrderPaymentState extends State<OrderPayment> {
  List accIcons = [
    Icons.account_circle_outlined,
    FontAwesomeIcons.idBadge,
    Icons.shield_outlined,
    Icons.lock_clock_outlined,
    FontAwesomeIcons.bullhorn,
    FontAwesomeIcons.creditCard
  ];

  List accName = [
    'Accounts',
    'Personal details',
    'Password and secuirity',
    'Your information and permission',
    'Ad preferences',
    'payments'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: MyText(
          text: 'Orders and payments',
          maxline: 1,
          size: 15,
          fWeight: FontWeight.bold,
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.shopping_cart),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MyText(
              text: 'Recent Activity',
              size: 15,
              fWeight: FontWeight.bold,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_bag_outlined),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.0),
                    child: Icon(Icons.cake_outlined),
                  ),
                  Icon(Icons.groups_2_outlined),
                ],
              ),
            ),
            const MyText(
              text:
                  'You don\'t have any pending or completed activity. When you shop, donate or transfer money, that activity will appear here.',
              align: TextAlign.center,
            ),
            const MyText(
              text: 'Balances',
              fWeight: FontWeight.bold,
              size: 15,
            ),
            const ListTile(
              minLeadingWidth: 20,
              leading: Icon(Icons.star_border_outlined),
              title: MyText(text: 'Facebook Stars'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            const MyText(
              text: 'Settings',
              fWeight: FontWeight.bold,
              size: 15,
            ),
            ...List.generate(
              accIcons.length,
              (index) => ListTile(
                minLeadingWidth: 20,
                leading: Icon(
                  accIcons[index],
                  size: 20,
                ),
                title: MyText(text: accName[index]),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
            )
          ],
        ),
      ),
    );
  }
}
