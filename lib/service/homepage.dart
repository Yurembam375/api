import 'dart:developer';

import 'package:api/model/userModel.dart';
import 'package:api/service/service.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  Future<List<UserModel>> getdata() async {
    Apiservice apiservice = Apiservice();
    var resData = await apiservice.fetchdata();
    return resData;
  }
// List<Map<String, dynamic>> data = [];
  //  Apiservice service = Apiservice();

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   // getdata();
  //   super.initState();

  // }

//   getdata() async {
//     var res = await service.fetchdata();
//   if(res!=null){
//     res.map((e) {
//       data.add(e);
//       setState(() {

//       });
//     });
//   }
//   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Test"),
        ),
        body: Container(
          child: FutureBuilder(
            future: getdata(),
            builder: ((context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text("${snapshot.error} occured"),
                  );
                } else if (snapshot.hasData) {
                  var data = snapshot.data;
                  log(data.toString());
                }
                return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: ((context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(snapshot.data![index].name),
                          subtitle: Text(snapshot.data![index].department),
                        ),
                      );
                    }));
              }
              return Center(child: const CircularProgressIndicator());
            }),
          ),
        )
        //  Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     ListView.builder(
        //       itemCount: data.length,
        //       itemBuilder: ((context, index) {
        //         return ListTile(
        //           title: Text(data[index]["name"].toString()),

        //         );
        //       }))
        //   ],
        // ),
        );
  }
}
