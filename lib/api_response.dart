import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:bano_qabil_project/widget/customText.dart';
import 'package:flutter/material.dart';

class ApiTest extends StatefulWidget {
  const ApiTest({super.key});

  @override
  State<ApiTest> createState() => _ApiTestState();
}

class _ApiTestState extends State<ApiTest> {

Future apiTest() async {
  var uri = Uri.parse('https://newsapi.org/v2/everything?q=tesla&from=2023-06-20&sortBy=publishedAt&apiKey=07cfd066147947b9bdd50568599efddb');
  log('URL:$uri');
  var response=await http.get(uri);
  log("Status Code: ${response.statusCode.toString()}");
  if(response.statusCode ==200|| response.statusCode ==201){
    log(response.body);
  }else{
    log(response.body);
}

}

 @override
  void initState() {
    apiTest();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const MyText(text: 'Api Test',fWeight: FontWeight.bold,),
        centerTitle: true,
      ),
      body: const Center(child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyText(text: 'Api Test',fWeight: FontWeight.bold)
        ],
      )),
    );
  }
}