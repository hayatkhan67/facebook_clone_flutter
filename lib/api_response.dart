import 'dart:convert';
import 'dart:developer';

import 'package:bano_qabil_project/resources_list/news_api.dart';
import 'package:bano_qabil_project/widget/customText.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiRespone extends StatefulWidget {
  const ApiRespone({super.key});

  @override
  State<ApiRespone> createState() => _ApiResponeState();
}

class _ApiResponeState extends State<ApiRespone> {
  @override
  void initState() {
    super.initState();
    newsData();
  }

  List<Articles> postList = [];
  Future<List<Articles>> newsData() async {
    var uri = Uri.parse(
        'https://newsapi.org/v2/everything?q=tesla&from=2023-06-23&sortBy=publishedAt&apiKey=07cfd066147947b9bdd50568599efddb');
    final response = await http.get(uri);
    log(response.statusCode.toString());
    var data = jsonDecode(response.body.toString());
    log('URI:$uri');
    if (response.statusCode == 200 || response.statusCode == 201) {
      // Check if the 'articles' key exists in the response data
      if (data.containsKey('articles')) {
        // Access the list of articles under the 'articles' key
        List<dynamic> articles = data['articles'];
        for (Map<String, dynamic> i in articles) {
          postList.add(Articles.fromJson(i));
        }
      }
      return postList;
    } else {
      return postList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const MyText(text: 'Articles'),
          centerTitle: true,
        ),
        body: FutureBuilder(
          future: newsData(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }
            return ListView.builder(
                itemCount: postList.length,
                itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: postList[index].urlToImage != null
                          ? Image.network(
                              postList[index].urlToImage.toString(),
                              fit: BoxFit.cover,
                            )
                          : Text(postList[index].author.toString()),
                    )
                    //  Column(
                    //   children: [
                    //     Text(postList[0].url.toString()),
                    //   ],
                    // ),
                    ));
          },
        ));
  }
}
