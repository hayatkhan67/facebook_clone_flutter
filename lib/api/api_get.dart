import 'dart:convert';
import 'dart:developer';
import 'package:bano_qabil_project/api/jsonData.dart';
import 'package:bano_qabil_project/widget/customText.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ApiGet extends StatefulWidget {
  const ApiGet({super.key});

  @override
  State<ApiGet> createState() => _ApiGetState();
}

class _ApiGetState extends State<ApiGet> {
  List<Articles> article = [];

  Future<Articles> fetchData() async {
    const uri =
        'https://newsapi.org/v2/everything?q=tesla&from=2023-07-13&sortBy=publishedAt&apiKey=07cfd066147947b9bdd50568599efddb';
    final response = await http.get(Uri.parse(uri));
    log(response.statusCode.toString());
    log(response.body.toString());
    if (response.statusCode == 200 || response.statusCode == 201) {
      log('sucess');
      var json = jsonDecode(response.body);
      List data = json['articles'] as List;

      for (var i in data) {
        article.add(Articles.fromJson(i));
      }
      return Articles();
    }
    return Articles();
  }

  @override
  Widget build(BuildContext context) {
    fetchData();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const MyText(
            text: 'Facebook News',
            size: 19.0,
            color: Colors.white,
          ),
        ),
        body: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: article.length,
                itemBuilder: (context, index) {
                  final news = article[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  NewsHomePage(data: article[index]),
                            ));
                      },
                      leading: news.urlToImage != null
                          ? Image(
                              image: NetworkImage(news.urlToImage!),
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.error),
                            )
                          : const Icon(Icons.error),
                      title: MyText(
                        text: news.title,
                        fWeight: FontWeight.bold,
                      ),
                      subtitle: MyText(text: news.description),
                    ),
                  );
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}

class NewsHomePage extends StatelessWidget {
  const NewsHomePage({super.key, this.data});
  final dynamic data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Image.network(data.urlToImage),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            Expanded(
                child: MyText(
              text: data.title,
              size: 17.0,
              fWeight: FontWeight.bold,
            )),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            MyText(
              text: 'Authur: ${data.author}',
              size: 17.0,
              fWeight: FontWeight.bold,
            )
          ],
        ),
      ),
      const Expanded(child: SizedBox()),
      const Row(
        children: [
          MyText(
            text: 'Description:',
            size: 17.0,
            fWeight: FontWeight.bold,
          ),
        ],
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            Expanded(
                child: MyText(
              text: data.description,
              size: 16.0,
              align: TextAlign.left,
            ))
          ],
        ),
      )
    ]));
  }
}
