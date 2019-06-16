import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage()},
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //String _email;
  //String _password;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                child: Text(
                  "LOG IN",
                  style: TextStyle(fontSize: 50.0,fontWeight:FontWeight.bold),
                ),
              ),
              //Container(
                //padding: EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
                //child: Text(
                  //"There",
                  //style: TextStyle(fontSize: 80.0,fontWeight:FontWeight.bold),
                //),
              //),
              Container(
                padding: EdgeInsets.fromLTRB(170.0, 90.0, 0.0, 0.0),
                child: Text(
                  ".",
                  style: TextStyle(fontSize: 80.0,fontWeight:FontWeight.bold,color: Colors.green),
                ),
              )

            ],),
          ),
          Container(
              padding: EdgeInsets.only(top: 15.0,left: 20.0,right: 20.0),
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "EMAIL",
                        labelStyle: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green))
                    ),
                    //validator: (val)=>!val.contains("@")?'Invalid Email':null,
                    //onSaved: (val)=>_email=val,
                  ),
                  SizedBox(height: 10.0,),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "PASSWORD",
                        labelStyle: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green))
                    ),
                    //validator: (val)=> val.length<6 ?'Password too sort':null,
                    //onSaved: (val)=>_password=val,
                    obscureText: true,
                  ),
                  SizedBox(height: 5.0,),
                  Container(
                    alignment: Alignment(1.0,0.0),
                    padding: EdgeInsets.only(top: 15.0,left: 20.0),
                    child: InkWell(
                      child: Text('Forgot Password',
                          style: TextStyle(color: Colors.green,
                              fontWeight:FontWeight.bold,
                              fontFamily:'Montserrat',
                              decoration: TextDecoration.underline)),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  Container(
                    height: 40.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: (){},
                        child: Center(child: Text('LOGIN',style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,fontFamily: 'Montserrat'),),),
                      ),
                    ),
                  ),
                  SizedBox(height:15.0),
                  Container(
                    height: 40.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0
                          ),color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(child: Image.network('https://img.icons8.com/android/24/000000/facebook.png'),
                          ),
                          SizedBox(width: 10.0,),
                          Center(child: Text('Log in with facebook',
                            style:TextStyle(fontWeight: FontWeight.bold,
                                fontFamily:'Montserrat') ,),)
                        ],
                      ),
                    ),
                  )
                ],
              )

          ),
          SizedBox(height:5.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed('/signup');
                },
                child: Text('Resgister',
                  style: TextStyle(fontFamily: 'Montserrat',color:Colors.green, fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
              )
            ],)
        ],),
    );
  }
}
