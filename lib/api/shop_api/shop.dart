import 'package:flutter/material.dart';

import '../../widget/customText.dart';
import '../../widget/myrich_text.dart';

class Shop extends StatefulWidget {
  const Shop({super.key, this.data});

  // ignore: prefer_typing_uninitialized_variables
  final data;
  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var data = widget.data;
    return Scaffold(
      // backgroundColor: Colors.blue[100],
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: MyText(
          text: data.title!,
          size: 18,
          fWeight: FontWeight.bold,
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.save_rounded),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 400,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                data.images[currentIndex].toString()),
                            fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          text: data.title!,
                          size: 22,
                          fWeight: FontWeight.bold,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: RicText(
                            first: 'Price: ',
                            size: 20,
                            fWeight: FontWeight.bold,
                            color: Colors.black,
                            sec: '\$${data.price.toString()}',
                            color2: Colors.black,
                            size2: 17,
                          ),
                        ),
                        Wrap(
                          children: List.generate(
                              data.images!.length,
                              (index) => InkWell(
                                    onTap: () {
                                      setState(() {
                                        currentIndex = index;
                                      });
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.all(10),
                                      height: 80,
                                      width: 60,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  data.images[index]),
                                              fit: BoxFit.cover),
                                          border:
                                              Border.all(color: Colors.black)),
                                    ),
                                  )),
                        ),
                        RicText(
                          first: 'Brand: ',
                          size: 17,
                          fWeight: FontWeight.bold,
                          color: Colors.black,
                          sec: data.brand.toString(),
                          color2: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RicText(
                                first: 'Rating: ',
                                size: 17,
                                fWeight: FontWeight.bold,
                                color: Colors.black,
                                sec: data.rating.toString(),
                                color2: Colors.black,
                              ),
                              RicText(
                                first: 'DiscountPercentage: ',
                                size: 17,
                                fWeight: FontWeight.bold,
                                color: Colors.black,
                                sec: data.discountPercentage.toString(),
                                color2: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: RicText(
                            first: 'Available Stock: ',
                            size: 17,
                            fWeight: FontWeight.bold,
                            color: Colors.black,
                            sec: data.stock.toString(),
                            color2: Colors.black,
                          ),
                        ),
                        RicText(
                          first: 'Description: ',
                          size: 17,
                          fWeight: FontWeight.bold,
                          color: Colors.black,
                          sec: data.description.toString(),
                          color2: Colors.black,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient:
                    LinearGradient(colors: [Colors.blueGrey, Colors.pink])),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Card(
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.shopping_cart_outlined),
                        label: const MyText(text: 'Cart Now')),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.messenger_outline_outlined),
                        label: const MyText(text: 'Message')),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
