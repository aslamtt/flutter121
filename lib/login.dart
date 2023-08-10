import 'package:flutter/material.dart';
import 'package:flutter1/home.dart';
import 'package:flutter1/sign.dart';
var h;
var w;
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  RegExp emailvalidation=RegExp(r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&]))");
  RegExp passwordvalidation=RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  TextEditingController email_controoler=TextEditingController();
  TextEditingController password_controller=TextEditingController();
  bool chek=false;
  bool eye=false;
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
                  padding: EdgeInsets.all(w*0.05),
                  width: w*1,

                  decoration: BoxDecoration(
                    color: secondrycolor,
                    borderRadius: BorderRadius.only(topRight:Radius.circular(w*0.13),topLeft: Radius.circular(w*0.13)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Welcome",style: TextStyle(color: primarycolor,fontWeight: FontWeight.bold,fontSize: 17),),
                          SizedBox(height: w*0.05,),
                          Row(
                            children: [
                              Text("You Have Account? "),
                              SizedBox(width: w*0.03,),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Sign(),));
                                },
                                child: Text("Lets Signin",style:
                                TextStyle(fontWeight: FontWeight.bold,color: primarycolor),),
                              )
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
                              child: Center(child: Text("LOGIN",style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20,color:secondrycolor
                              ),)),
                            ),),
                          SizedBox(height: w*0.05,),
                          Center(child: Text("Or Login With")),
                          SizedBox(height: w*0.05,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              Container(
                                height:w* 0.09,
                                width:w*0.13 ,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(20),
                                 color: Colors.blueAccent.shade700,
                                 boxShadow: [BoxShadow(
                                   blurRadius:5,
                                   spreadRadius: 2,
                                   offset: Offset(0, 2),
                                   color: Colors.grey,
                                 )]
                               ),
                                child: Icon(Icons.facebook_outlined,color: secondrycolor,),
                              ),
                              SizedBox(width: w*0.03,),
                              Container(
                                height:w* 0.09,
                                width:w*0.13 ,
                               decoration: BoxDecoration(
                                 color: Colors.blueAccent,
                                 borderRadius: BorderRadius.circular(20),
                                 image: DecorationImage(
                                     image: AssetImage("assets/twitn-removebg-preview.png",),fit:BoxFit.cover),
                                 boxShadow: [BoxShadow(
                                   blurRadius:5,
                                   spreadRadius: 2,
                                   offset: Offset(0, 2),
                                   color: Colors.grey,
                                 )]
                               ),
                               
                              ),
                              SizedBox(width: w*0.03,),
                              Container(
                                height:w* 0.09,
                                width:w*0.13 ,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(20),
                                 color: Colors.redAccent,
                                 image: DecorationImage(
                                     image:AssetImage("assets/googlel-removebg-preview.png") ),
                                 boxShadow: [BoxShadow(
                                   blurRadius:5,
                                   spreadRadius: 2,
                                   offset: Offset(0, 2),
                                   color: Colors.grey,
                                 )]
                               ),
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                  ),
                )),
          ],
        ) ,
      ),

    );
  }
}
