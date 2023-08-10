import 'package:flutter/material.dart';
var h;
var w;
Color primarycolor=Colors.deepOrange;
Color secondrycolor=Colors.white;
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    h=MediaQuery.of(context).size.height;
    w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primarycolor,
      body: Container(
        height: w*2.5,
        width: w*1,
        child: Stack(
          children: [
            Column(
              children: [
               Expanded(
                 flex: 4,
                 child: Container(
                   decoration: BoxDecoration(
                     image: DecorationImage(
                         image:AssetImage("assets/neww-removebg-preview.png"),
                     ),
                     color: Colors.deepOrange,

                   ),


               ),
               ) ,

                Expanded(
                  flex: 3,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      width: w*1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
                        color: Colors.white,
                      ),


                      child: Padding(

                        padding: const EdgeInsets.all(15.0),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Writch Watch",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                            Text("Rolex Swiss",style: TextStyle(color: Colors.grey),),
                           Row(
                             // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                               Container(
                                 height: w*0.10,
                                 width:w*0.20 ,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   color: Colors.orange.shade200
                                 ),
                                 child: Center(child: Text("Orange",style: TextStyle(color: Colors.orange.shade700),)),
                               ),
                               SizedBox(width: w*0.03,),
                               Container(
                                 height: w*0.10,
                                 width:w*0.20 ,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   color: Colors.blueAccent.shade200
                                 ),
                                 child: Center(child: Text("Watch",style: TextStyle(color: Colors.blueAccent.shade700),)),
                               ),
                               SizedBox(width: w*0.03,),
                               Container(
                                 height: w*0.10,
                                 width:w*0.20 ,
                                 decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   color: Colors.green.shade200
                                 ),
                                 child: Center(child: Text("Latest",style: TextStyle(color: Colors.green.shade700),)),
                               ),
                             ],
                           ),
                            Text("Size",style: TextStyle(color: Colors.grey),),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.start,
                              //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                NewSize(
                                    (){
                                      print("S");
                                    },
                                    Text("S")),
                                NewSize(
                                    (){
                                      print("M");
                                    },
                                    Text("M")),
                                NewSize(
                                    (){
                                      print("L");
                                    },
                                    Text("L")),
                                NewSize(
                                    (){
                                      print("XL");
                                    },
                                    Text("XL")),
                                NewSize(
                                    (){
                                      print("S");
                                    },
                                    Text("XXL")),
                                // Container(
                                //   height: w*0.10,
                                //   width:w*0.10 ,
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(8),
                                //       color: Colors.grey.shade200),
                                //   child: Center(child: Text("S",style: TextStyle(fontWeight: FontWeight.bold),)),
                                //
                                // ),
                                // SizedBox(width: w*0.03,),
                                // Container(
                                //   height: w*0.10,
                                //   width:w*0.10 ,
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(8),
                                //       color: Colors.grey.shade200),
                                //   child: Center(child: Text("M",style: TextStyle(fontWeight: FontWeight.bold),)),
                                //
                                // ),
                                // SizedBox(width: w*0.03,),
                                // Container(
                                //   height: w*0.10,
                                //   width:w*0.10 ,
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(8),
                                //       color: Colors.grey.shade200),
                                //   child: Center(child: Text("L",style: TextStyle(fontWeight: FontWeight.bold),)),
                                //
                                // ),
                                // SizedBox(width: w*0.03,),
                                // Container(
                                //   height: w*0.10,
                                //   width:w*0.10 ,
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(8),
                                //       color: Colors.grey.shade200),
                                //   child: Center(child: Text("XL",style: TextStyle(fontWeight: FontWeight.bold),)),
                                //
                                // ),
                                // SizedBox(width: w*0.03,),
                                // Container(
                                //   height: w*0.10,
                                //   width:w*0.10 ,
                                //   decoration: BoxDecoration(
                                //       borderRadius: BorderRadius.circular(8),
                                //       color: Colors.grey.shade200),
                                //   child: Center(child: Text("XXL",style: TextStyle(fontWeight: FontWeight.bold),)),
                                //
                                // ),
                              ],
                            ),
                            SizedBox(height: w*0.03,),
                            Text("Color",style: TextStyle(color: Colors.grey),),
                            Row(
                              children: [
                                Container(
                                  height: w*0.05,
                                  width: w*0.05,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red
                                  ),
                                ),
                                SizedBox(width: w*0.03,),
                                Container(
                                  height: w*0.05,
                                  width: w*0.05,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.orange
                                  ),
                                ),
                                SizedBox(width: w*0.03,),
                                Container(
                                  height: w*0.05,
                                  width: w*0.05,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blueAccent
                                  ),
                                ),
                                SizedBox(width: w*0.03,),
                                Container(
                                  height: w*0.05,
                                  width: w*0.05,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green
                                  ),
                                ),

                              ],
                            ),

                          ],

                        ),
                      ),

                ) ),

              ],
            ),
            Positioned(
               bottom: w*0.001,
                right: w*0.1,
                top: w*0.3,
                child:Container(
                  width: w*0.1,
                  height: w*0.1,
                  decoration: BoxDecoration(
                    boxShadow:[BoxShadow(
                      color: Colors.grey,
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 2)
                    )],
                    color: Colors.white,
                    shape: BoxShape.circle,

                  ),
                  child: Icon(Icons.favorite,shadows: [BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: Offset(0, 2)
                  )],
                    color: Colors.deepOrange,),

            )

            ),

          ],
        ),
      ),


    );
  }
}

Widget NewSize(Function onPress,Text text){
  return Padding(padding: EdgeInsets.only(right:w* 0.04),
  child: InkWell(
      onTap:() {
        onPress();
      },
  child: Container(
  height: w*0.10,
  width: w*0.10,
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  color: secondrycolor
  ),
    child: Center(child: text),

  ),

  ),
  );

}