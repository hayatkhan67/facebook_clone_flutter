// // ignore_for_file: file_names


// import 'dart:js_interop';

// import 'package:flutter/material.dart';

// class CustomText extends StatelessWidget {
//    CustomText(
//       {super.key,
//       this.bodyText,
//       this.headingText,
//       this.align,
//       this.fontFamily,
//       this.color,
//       this.fWeight,
//       this.size});

//   final dynamic headingText;
//   final dynamic bodyText;
//   final Color? color;
//   final FontWeight?fWeight;
//   final double? size;
//   final TextAlign? align;
//   final String? fontFamily;
//   bool check=false;
//   @override
//   Widget build(BuildContext context) {
//  var fsize= MediaQuery.of(context).textScaleFactor;
//     return LayoutBuilder(builder: (context, constraints) {
//      if(constraints.maxWidth<500){
//       return 
//         text();

//      }else if(constraints.maxWidth<700){
//       return 
//         text();
//      }else{
//       return 
//         text();
//      } 
//     },);
    
    
    
   
//   }

//   Text text() {
//     return Text(
//       headingText ?? bodyText,
//         textAlign: align,
//         style: TextStyle(
//             fontFamily: fontFamily,
//             color: color ?? Colors.black,
//             fontWeight: fWeight ?? FontWeight.normal,
//             fontSize:fsize ?? 18),
//   );
//   }
// }
