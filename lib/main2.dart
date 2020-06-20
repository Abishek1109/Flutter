import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFB415B),
        fontFamily: "Ubuntu"
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  bool _isHidden = true;

  void _toggleVisibility(){
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        padding: EdgeInsets.only(top: 100.0, right: 20.0, left: 30.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Align(alignment: Alignment.centerLeft, child: new Text("Register",
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Lato"
              ),)),
            SizedBox(height: 40.0,),
            new Align(alignment: Alignment.centerLeft, child: new Text("Mobile Number",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                fontFamily: "Lato"
              ),)),

            SizedBox(height: 10.0,),
            buildTextField(""),
            SizedBox(height: 10.0,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Resend Code?",
                    style: TextStyle(
                      color: Color.fromARGB(0xFF, 0x7f, 0x7f, 0x7f),
                      fontSize: 15.0
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0,),
            new Align(alignment: Alignment.centerLeft, child: new Text("Registration Code",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                fontFamily: "Lato"
              ),)),

            SizedBox(height: 10.0,),
            buildTextField(""),
            
            SizedBox(height: 25.0,),
            new Align(alignment: Alignment.centerLeft, child: new Text("Full Name",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                fontFamily: "Lato"
              ),)),

            SizedBox(height: 10.0,),
            buildTextField(""),
            SizedBox(height: 25.0,),
            new Align(alignment: Alignment.centerLeft, child: new Text("Password",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                fontFamily: "Lato"
              ),)),

            SizedBox(height: 10.0,),
            buildTextField("Password"),



            SizedBox(height: 50.0),

          new SizedBox(

  height: 70.0,
         child: new RaisedButton(
            onPressed: () {},
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            color: Color.fromARGB(0xFF, 0xea, 0x54, 0x55),
            child: Container(
              decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(23.0),
        
      ),
              padding: const EdgeInsets.all(10.0),
              child: Center(
        child: Text(
          "Register Now",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
            fontFamily: "Lato"
          ),
        ),
      ),
            ),
          ),
          ),
            
            SizedBox(height: 10.0,),
            Container(
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?"),
                    SizedBox(width: 10.0,),
                    Text("SIGN UP", style: TextStyle(color: Theme.of(context).primaryColor,))
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget buildTextField(String hintText){
    return TextField(
      decoration: InputDecoration(
         filled: true,
         fillColor: Color.fromRGBO(119, 119, 119, 0.12),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color.fromARGB(0xFF, 0xe1, 0xe1, 0xe1),
          fontSize: 16.0,
        ),
        border: OutlineInputBorder(
          //borderRadius: BorderRadius.circular(20.0),
        ),
       
      ),
      obscureText: hintText == "Password" ? _isHidden : false,
    );
  }


}