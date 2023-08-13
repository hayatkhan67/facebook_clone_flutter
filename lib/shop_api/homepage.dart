import 'dart:convert';
import 'dart:developer';

import 'package:bano_qabil_project/shop_api/shop.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model_phone.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Products> product = [];

  Future<List<Products>> fetchData() async {
    final uri = Uri.parse('https://dummyjson.com/products');

    final response = await http.get(uri);
    log("Status Code ${response.statusCode}");
    log("Status Code ${response.body}");
    final json = jsonDecode(response.body);
    List<dynamic> data = json['products'];
    if (response.statusCode == 200 || response.statusCode == 201) {
      for (Map<String, dynamic> finalData in data) {
        product.add(Products.fromJson(finalData));
      }
      return product;
    }
    return product;
  }

  bool isList = false;

  TextEditingController textController = TextEditingController();

  String search = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'HKN SHOP',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          )
        ],
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 220,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Colors.blueGrey,
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/photo_2023-08-11_17-41-42.jpg'),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 10,
                  right: 10,
                  bottom: -30,
                  child: TextField(
                    controller: textController,
                    onChanged: (value) {
                      setState(() {
                        value = search;
                        log(search);
                      });
                    },
                    decoration: InputDecoration(
                        hintText: 'Search',
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.black, width: 3))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton.icon(
                          onPressed: () {
                            isList = true;
                            setState(() {});
                          },
                          icon: const Icon(Icons.list_rounded),
                          label: const Text('ListView')),
                      TextButton.icon(
                          onPressed: () {
                            setState(() {});
                            isList = false;
                          },
                          icon: const Icon(Icons.grid_3x3),
                          label: const Text('GridView')),
                    ],
                  ),
                  FutureBuilder(
                    future: fetchData(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(child: CircularProgressIndicator());
                      } else {
                        return Column(
                          children: [
                            isList == true
                                ? ListView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: snapshot.data!.length,
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) => Card(
                                            child: ListTile(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => Shop(
                                                      data: snapshot
                                                          .data![index]),
                                                ));
                                          },
                                          leading: snapshot
                                                  .data![index].images![0]
                                                  .toString()
                                                  .isNotEmpty
                                              ? Image.network(
                                                  snapshot
                                                      .data![index].images![0]
                                                      .toString(),
                                                  // fit: BoxFit.fill,
                                                )
                                              : const Center(
                                                  child: Icon(Icons.error)),
                                          title: Text(
                                            snapshot.data![index].title!,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                          subtitle: Text(
                                            snapshot.data![index].description!,
                                            maxLines: 2,
                                            style: const TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                fontSize: 15),
                                          ),
                                          trailing: Text(
                                            'Price: \$${snapshot.data![index].price!}',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                        )))
                                : GridView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            mainAxisSpacing: 10,
                                            crossAxisSpacing: 10,
                                            mainAxisExtent: 370),
                                    shrinkWrap: true,
                                    itemCount: snapshot.data!.length,
                                    itemBuilder: (context, index) => InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Shop(
                                                  data: snapshot.data![index]),
                                            ));
                                      },
                                      child: Card(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            snapshot.data![index].images![0]
                                                    .toString()
                                                    .isNotEmpty
                                                ? ClipRRect(
                                                    borderRadius:
                                                        const BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                    10),
                                                            topRight:
                                                                Radius.circular(
                                                                    10)),
                                                    child: Image.network(
                                                      snapshot.data![index]
                                                          .images![0]
                                                          .toString(),
                                                      height: 200,
                                                      width: double.infinity,
                                                      fit: BoxFit.fill,
                                                    ),
                                                  )
                                                : const Center(
                                                    child: Icon(Icons.error)),
                                            const Divider(
                                              thickness: 1.0,
                                            ),
                                            Flexible(
                                              child: Text(
                                                snapshot.data![index].title!,
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 17),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 8.0),
                                              child: Text(
                                                  '${snapshot.data![index].description}',
                                                  maxLines: 2,
                                                  style: const TextStyle(
                                                      fontSize: 15,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      color: Colors.black54)),
                                            ),
                                            Text(
                                              'Price: \$${snapshot.data![index].price}',
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                          ],
                        );
                      }
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
