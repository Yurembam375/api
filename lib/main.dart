

import 'dart:developer';

import 'package:api/model/userModel.dart';
import 'package:api/service/homepage.dart';
import 'package:api/service/service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const TestPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
// class TestPage extends StatefulWidget {
//   const TestPage({super.key});

//   @override
//   State<TestPage> createState() => _TestPageState();
// }

// class _TestPageState extends State<TestPage> {
 
// Future<UserModel> getdata()
// async{
//   Apiservice apiservice = Apiservice();
//   var resData = await apiservice.fetchdata();
//   return resData;
// }
// // List<Map<String, dynamic>> data = [];
//   //  Apiservice service = Apiservice();

//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   // getdata();
//   //   super.initState();
   
//   // }

// //   getdata() async {
// //     var res = await service.fetchdata();
// //   if(res!=null){
// //     res.map((e) {
// //       data.add(e);
// //       setState(() {
        
// //       });  
// //     });   
// //   } 
// //   }


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Text("Test"),),
//       body:
//       FutureBuilder(
//         future:getdata().,
//         builder: ((context, snapshot)
//          {
//           if(snapshot.connectionState== ConnectionState.done){
//             if(snapshot.hasError){
//               return Center(
//                 child: Text("${snapshot.error} occured"),
//               );
//             }else if(snapshot.hasData){
//               List<UserModel>data= snapshot;
//             }
//             return const CircularProgressIndicator();
//           }
//         }),)
//       //  Column(
//       //   mainAxisAlignment: MainAxisAlignment.center,
//       //   children: [
//       //     ListView.builder(
//       //       itemCount: data.length,
//       //       itemBuilder: ((context, index) {
//       //         return ListTile(
//       //           title: Text(data[index]["name"].toString()),
                
//       //         );
//       //       }))
//       //   ],
//       // ),
//     );
//   }
// }
