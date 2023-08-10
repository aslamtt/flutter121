import 'package:flutter/material.dart';
import 'package:flutter1/home.dart';

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  RegExp emailvalidation=RegExp(r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&]))");
  RegExp passwordvalidation=RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  TextEditingController email_controoler=TextEditingController();
  TextEditingController password_controller=TextEditingController();
  bool eye=false;
  bool chek=false;
  @override
  Widget build(BuildContext context) {
    h=MediaQuery.of(context).size.height;
    w=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: primarycolor,
      body: Container(
        height: w*2.2,
        width: w*1,
        color:primarycolor,
        child:Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                    decoration: BoxDecoration(
                      color: primarycolor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.location_on,size: 100,color: secondrycolor,),
                        Text("VISION GO",style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color:secondrycolor, ),)

                      ],
                    )
                )),

            Expanded(
                flex: 5,
                child: Container(
                  padding: EdgeInsets.all(w*0.07),
                  width: w*1,

                  decoration: BoxDecoration(
                    color: secondrycolor,
                    borderRadius: BorderRadius.only(topRight:Radius.circular(w*0.13),topLeft: Radius.circular(w*0.13)),
                  ),
                  child: SingleChildScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Lets Sign",style: TextStyle(color: primarycolor,fontWeight: FontWeight.bold,fontSize: 17),),
                        SizedBox(height: w*0.05,),
                        Row(
                          children: [
                            Text("Enter Deteails "),
                          ],
                        ),
                        SizedBox(height: w*0.05,),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if(!emailvalidation.hasMatch(value!)){
                              return "Enter valid email";
                            }return null;
                          },
                          controller: email_controoler,
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.add),
                              hintText: "Enter your email",
                              labelText: "Email",
                              border: OutlineInputBorder()
                          ),
                        ),
                        SizedBox(height: w*0.05,),
                        TextFormField(
                          obscureText: eye==true?false:true,
                          controller: password_controller,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (value) {
                            if(!passwordvalidation.hasMatch(value!)){
                              return "Enter valid password";
                            }return null;
                          },
                          decoration: InputDecoration(
                              hintText: "Enter your password",
                              labelText: "Password",
                              border: OutlineInputBorder(),
                              suffixIcon: InkWell(
                                onTap: () {
                                  eye=!eye;
                                  setState(() {

                                  });
                                },
                                child: eye==true?Icon(Icons.visibility):Icon(Icons.visibility_off),
                              )

                          ),
                        ),
                        SizedBox(height: w*0.05,),
                        Row(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(value:chek,
                                  onChanged: (value) {
                                    setState(() {
                                      chek=value!;
                                    });
                                  },),
                                Text("Yes"),
                              ],
                            ),
                            Text("Sifremi Unumttum")
                          ],
                        ),
                        SizedBox(height: w*0.08,),
                        Center(
                          child: Container(
                            height: w*0.10,
                            width: w*0.6,
                            decoration: BoxDecoration(
                                color: primarycolor,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [BoxShadow(
                                    blurRadius: 2,
                                    spreadRadius: 1,
                                    offset: Offset(0, 2),
                                    color: Colors.orangeAccent
                                )]
                            ),
                            child: Center(child: InkWell(
                              child: Text("SIGNING",style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 20,color:secondrycolor
                              ),),
                            )),
                          ),),



                      ],
                    ),
                  ),
                )),
          ],
        ) ,
      ),

    );
  }
}
