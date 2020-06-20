import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFB415B),
        fontFamily: "Lato"
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
        padding: EdgeInsets.only(top: 100.0, right: 20.0, left: 20.0, bottom: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Logo',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Lato"
              ),
            ),
            SizedBox(height: 250.0,),
            new Align(alignment: Alignment.centerLeft, child: new Text("Mobile Number",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                fontFamily: "Lato"
              ),)),

            SizedBox(height: 15.0,),
            buildTextField(""),
            SizedBox(height: 30.0,),
             new Align(alignment: Alignment.centerLeft, child: new Text("Password",
            style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                fontFamily: "Lato"
              ),)),

            SizedBox(height: 15.0,),
            buildTextField(""),
            
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
          "Log In",
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
                    Text("If you have an account with us.", style: TextStyle(color: Color.fromRGBO(119, 119, 119, 0.75),)),
                    SizedBox(width: 10.0,),
                    Text("Please log in!", style: TextStyle(color: Color.fromRGBO(119, 119, 119, 0.75),))
                  ],
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

  Widget buildButtonContainer(){
    return Container(
      height: 56.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(23.0),
        gradient: LinearGradient(
          colors: [
            Color(0xFFFB415B),
            Color(0xFFEE5623)
          ],
          begin: Alignment.centerRight,
          end: Alignment.centerLeft
        ),
      ),
      child: Center(
        child: Text(
          "LOGIN",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );

  }
}