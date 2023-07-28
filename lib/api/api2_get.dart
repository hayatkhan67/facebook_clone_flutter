
// import 'dart:convert';
// import 'dart:developer';

// import 'package:bano_qabil_project/widget/customText.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart'as http ;

// import 'model_data.dart';

// class Api2Get extends StatefulWidget {
//   const Api2Get({super.key});

//   @override
//   State<Api2Get> createState() => _Api2GetState();
// }

// class _Api2GetState extends State<Api2Get> {
// Ip? myData;
// Future fetchData()async{
// final url=Uri.parse('https://ipinfo.io/161.185.160.93/geo');

// final response=await http.get(url);

// log('Status Code ${response.statusCode}');
// log('response ${response.body}');
// if(response.statusCode==200||response.statusCode==201){
//   log(response.body);
//   Map<String, dynamic> data=await json.decode(response.body);
//   myData=Ip.fromJson(data);
//   return myData;
// }else{
//   log('error');
// }
// }

// @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body:
//       Column(
//              children: [
//                Center(child: MyText(text: myData!.readme.toString()),)
//              ],
//            )
      
//     );
//   }
// }