import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:guapp/home.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../Model/newsmodel.dart';

class Services{
  static const String url = 'https://clever-nash.45-90-108-21.plesk.page/candidate/PRINCE/GUNEWS/GunewsDB.php';
  static Future<List<News>> getUsers() async{
    try{
      final responce = await http.get(url);
      if(200 == responce.statusCode){
        final List<News> users = newsFromJson(responce.body);
        return users;
      }
      else {
        return List<News>();
      }
    } catch(e) {
      return List<News>();
    }
  }
}

class newsData extends StatefulWidget {
  const newsData({Key key}) : super(key: key);

  @override
  State<newsData> createState() => _newsDataState();
}
Map mapres;
class _newsDataState extends State<newsData> {
  static const mcolor = const Color(0xFF38a464);

  List<News> _users;
  bool _loading;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loading = true;
    Services.getUsers().then((users) {
      setState(() {
        _users=users;
        _loading=false;
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: mcolor,
      title: Text('News'),
      centerTitle: true,
    ),
      body: _loading?Center(child: Lottie.asset('Assets/12955-no-internet-connection-empty-state.json') ):Container(
          color: Colors.white,
          child:
          ListView.builder(
              itemCount: null==_users?0:_users.length,
              itemBuilder: (context, index) {

                News user = _users[index];
                return

                   Card(

                      elevation: 5,
                      child: Column(
                        children: [
                          Row(
                            children: [

                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 5.0,right: 5,top: 15,bottom: 15 ),
                                  child: Text(user.news.toString(),style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.w400,


                                  ),),
                                ),
                              ),
                              // SizedBox(width: 10,)
                              
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(user.type.toString(),style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15
                                ),),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.date_range,size: 19,),

                                  Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: Text(user.date.toString(),style: TextStyle(
                                      fontSize: 15
                                    ),),
                                  ),
                                ],
                              ),

                            ],
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width,

                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ElevatedButton(onPressed: (){}, child: Row(
                                  children: [
                                    Icon(Icons.remove_red_eye),
                                    SizedBox(width: 10,),
                                    Text("View"),
                                  ],
                                  mainAxisAlignment: MainAxisAlignment.center,
                                ),style:
                                ElevatedButton.styleFrom(
                                  primary: mcolor, // Background color
                                ),
                              ),
                              ))
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                  );
              })),
    );
  }

}