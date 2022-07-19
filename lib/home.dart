import 'package:flutter/material.dart';
import 'package:guapp/course.dart';
import 'News/Newsdata.dart';
import 'Result.dart';
import 'candiate.dart';
class home extends StatefulWidget {

  const home({Key key}) : super(key: key);



  @override
  State<home> createState() => _homeState();
}


class _homeState extends State<home> {
  // ignore: unnecessary_const


  static const mcolor = const Color(0xFF38a464);
  static const lgreen = const Color(0xFFde6262);
  static const green = const Color(0xFFffb88c);
  static const red = const Color(0xFFffafbd);
  static const blue2 = const Color(0xFFffc3a0);
  static const blue = const Color(0xff56ab2f );
  static const purple = const Color(0xFFa8e063);
  static const pink = const Color(0xFF3CD3AD);
  static const og = const Color(0xFFF4CB8C4);



  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("GU INFO"),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 15,),
                InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>Result()));},
                  child: Card(

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),

                    ),

                    child: Container(
                      height: MediaQuery.of(context).size.height*0.158,
                      width: MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(

                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          )
                        ],
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [

                            lgreen,
                            green

                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.network('https://clever-nash.45-90-108-21.plesk.page/candidate/PRINCE/GUNEWS/Images/test_passed_48px.png',fit: BoxFit.cover),


                          Row(
                            children: [
                              Center(


                                child: Text("Result",style:TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500
                                ),),
                              ),
                              SizedBox(width: 15,),
                              Icon(Icons.arrow_forward_ios,color: Colors.white,)

                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),


                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      ),


                      //declare your widget here
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>mycourse()));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),

                    ),

                    child: Container(
                      height: MediaQuery.of(context).size.height*0.158,
                      width: MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          )
                        ],
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [

                            red,
                            blue2

                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.network('https://clever-nash.45-90-108-21.plesk.page/candidate/PRINCE/GUNEWS/Images/student_male_48px.png',fit: BoxFit.cover),


                          Row(
                            children: [
                              Center(


                                child: Text("Course",style:TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500
                                ),),
                              ),
                              SizedBox(width: 15,),
                              Icon(Icons.arrow_forward_ios,color: Colors.white,)

                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),


                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      ),


                      //declare your widget here
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>newsData()));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),

                    ),

                    child: Container(
                      height: MediaQuery.of(context).size.height*0.158,
                      width: MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          )
                        ],
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(
                          colors: [

                            pink,
                            og

                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.network('https://clever-nash.45-90-108-21.plesk.page/candidate/PRINCE/GUNEWS/Images/news_48px.png',fit: BoxFit.cover),


                          Row(
                            children: [
                              Center(


                                child: Text("News",style:TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500
                                ),),
                              ),
                              SizedBox(width: 15,),
                              Icon(Icons.arrow_forward_ios,color: Colors.white,)

                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),


                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      ),


                      //declare your widget here

                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),

                  ),

                  child: InkWell(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>newsData()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.158,
                      width: MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          )
                        ],
                        borderRadius: BorderRadius.circular(15),

                        gradient: LinearGradient(
                          colors: [
                            purple,
                            blue
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.network('https://clever-nash.45-90-108-21.plesk.page/candidate/PRINCE/GUNEWS/Images/student_male_48px.png',fit: BoxFit.cover),
                            Row(
                            children: [
                              Center(


                                child: Text("Syllabus",style:TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500
                                ),),
                              ),
                              SizedBox(width: 15,),
                              Icon(Icons.arrow_forward_ios,color: Colors.white,)

                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),


                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      ),


                      //declare your widget here
                    ),

                  ),
                ),


                SizedBox(height: 15,),

                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),

                  ),

                  child: Container(
                    height: MediaQuery.of(context).size.height*0.158,
                    width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 5),
                        )
                      ],
                      borderRadius: BorderRadius.circular(15),
                      gradient: LinearGradient(
                        colors: [
                          green,
                          lgreen
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: Row(
                      children: [
                        Image.network('https://clever-nash.45-90-108-21.plesk.page/candidate/PRINCE/GUNEWS/Images/paper_48px.png',fit: BoxFit.cover),


                        Row(
                          children: [
                            Center(


                              child: Text("Question\nPaper",style:TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500
                              ),),
                            ),
                            SizedBox(width: 15,),
                            Icon(Icons.arrow_forward_ios,color: Colors.white,)

                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),


                      ],
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    ),


                    //declare your widget here
                  ),

                ),
                SizedBox(height: 15,),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),

                  ),

                  child: InkWell(
                    onTap: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>candidate()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.158,
                      width: MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            spreadRadius: 1,
                            blurRadius: 5,
                            offset: const Offset(0, 5),
                          )
                        ],
                        borderRadius: BorderRadius.circular(15),

                        gradient: LinearGradient(
                          colors: [
                            purple,
                            blue
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Row(
                        children: [
                          Image.network('https://clever-nash.45-90-108-21.plesk.page/candidate/PRINCE/GUNEWS/Images/resume_40px.png',fit: BoxFit.cover),
                          Row(
                            children: [
                              Center(


                                child: Text("Candidate \nList Checker",style:TextStyle(
                                    fontSize: 25,

                                    color: Colors.white,
                                    fontWeight: FontWeight.w500
                                ),),
                              ),
                              SizedBox(width: 15,),
                              Icon(Icons.arrow_forward_ios,color: Colors.white,)

                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                          ),



                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      ),


                      //declare your widget here
                    ),

                  ),
                ),



              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        )
    );
  }
}
