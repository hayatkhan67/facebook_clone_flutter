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

List <Articles>article=[];

Future fetchData ()async{
  var uri=Uri.parse('https://newsapi.org/v2/everything?domains=wsj.com&apiKey=07cfd066147947b9bdd50568599efddb');

  log('Uri:$uri');
  final response=await http.get(uri);
  log('Status Code ${response.statusCode}');
  if(response.statusCode==200 || response.statusCode==201){
    log(response.body);

    Map<String,dynamic>data=jsonDecode(response.body);
    List<dynamic>articleData=data['articles'];setState(() {
      
    });
    for(Map<String,dynamic> finalData in articleData){
   article.add(Articles.fromJson(finalData));
    }
  }

}
@override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const MyText(text: 'Facebook News',size: 19.0,color: Colors.white,),
      ),
      body: ListView.builder(itemCount: article.length, itemBuilder: (context, index) {
        final news=article[index];
        return ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => NewsHomePage(data: article[index]),));
          },
          leading: news.urlToImage!=null? Image(image: NetworkImage(news.urlToImage!),errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),):const Icon(Icons.error),
          title: MyText(text: news.title,fWeight: FontWeight.bold,),
          subtitle: MyText(text: news.description),
        );
      },),
    );
  }
}                                 




class NewsHomePage extends StatelessWidget {
  const NewsHomePage({super.key,this.data});
final dynamic data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(data.urlToImage),
      
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
            children: [
              Expanded(child: MyText(text: data.title,size: 17.0,fWeight: FontWeight.bold,)),
           
            
            ],
            
            ),
          )
       , Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
            children: [
              MyText(text: 'Authur: ${data.author}',size: 17.0,fWeight: FontWeight.bold,)
        ],
      ),
      
        
       ),
       const Expanded(child: SizedBox()),
              const Row(
                children: [
                  MyText(text: 'Description:',size: 17.0,fWeight: FontWeight.bold,),
                ],
              )
      ,
       Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
            children: [
              Expanded(child: MyText(text: data.description,size: 16.0,align: TextAlign.left,))
        ],
      ),) ]
      )
    );
  }
}
































// import 'dart:convert';
// import 'dart:developer';
// import 'package:http/http.dart'as http;
// import 'package:flutter/material.dart';

// import '../widget/customText.dart';
// import 'jsonData.dart';

// class ApiGET extends StatefulWidget {
//   const ApiGET({super.key});

//   @override
//   State<ApiGET> createState() => _ApiGETState();
// }


// class _ApiGETState extends State<ApiGET> {

// List<Articles>articles=[];


// Future fetchData()async{
//   var url=Uri.parse('https://newsapi.org/v2/everything?domains=wsj.com&apiKey=07cfd066147947b9bdd50568599efddb');
 
//  log('URL:$url');
//  final response=await http.get(url);
//  log(response.statusCode.toString());
//  if(response.statusCode==200 || response.statusCode==201){
//   log(response.body);


  
//   Map<String,dynamic>data=jsonDecode(response.body);
//   List<dynamic>articlesData=data['articles'];
//   print(data);
//   //  setState(() {
//   //       articles = articlesData.map((article) => Articles.fromJson(article)).toList();
//   //     });
//   for(Map<String, dynamic> finalData in articlesData){
//     print(finalData.length);

//     articles.add(Articles.fromJson(finalData));
//   }

//  }else{
//   null;
//  }

// }

// @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }
//   @override
//   Widget build(BuildContext context) {
//     print(articles.length);
//     return Scaffold(
//        appBar: AppBar(
//           backgroundColor: Colors.green,
//           title: const MyText(text: 'Articles'),
//           centerTitle: true,          
//         ),
//       body: FutureBuilder(
//         future: fetchData(),
//         builder: (context, snapshot) {
//           if(snapshot.hasData){
//             return const Center(child: CircularProgressIndicator());
//           }else{
//           return ListView.builder(
//           itemCount:articles.length,
//           shrinkWrap: true,

//           itemBuilder: (context, index) {
//             return 
//                  ListTile(
//                 leading: Image(image: NetworkImage(articles[index].urlToImage!)),
              
//           title: Text(articles[index].author.toString(),style: const TextStyle(fontSize: 42),)
              
              
              
            
//           );
//           }
//           );
//   }}),
//     );
//   }
// }
// //  ListView.builder(
// //           itemCount:articles.length,
// //           shrinkWrap: true,

// //           itemBuilder: (context, index) {
// //             return ListTile(
// //               title: Text(articles[index].title!),
// //               leading: articles[index].urlToImage != null
// //               ? Image.network(
// //               articles[index].urlToImage!,
// //               height: 100,
// //               width: 100,
// //                 fit: BoxFit.cover,
// //                 errorBuilder: (context, error, stackTrace) {
// //                   return const Icon(Icons.error);
// //                 },
// //               )
// //               : const Icon(Icons.error),
// //               subtitle:  Text(articles[index].description! ),
// //             );
// //           },
// //         )
// //       ),
// //     );