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
        
            SizedBox(height: 400.0),

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
          "Log In with Blazon",
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
          SizedBox(height: 25.0,),
          new SizedBox(

  height: 70.0,
         child: new RaisedButton(
            onPressed: () {},
            textColor: Colors.white,
            padding: const EdgeInsets.all(0.0),
            shape: RoundedRectangleBorder(side: BorderSide(color: Colors.red)),
            color:  Colors.white,
            child: Container(
              decoration: BoxDecoration(
        //borderRadius: BorderRadius.circular(23.0),   
      ),
              padding: const EdgeInsets.all(10.0),
              child: Center(
        child: Text(
          "Sign Up",
          style: TextStyle(
            color: Color.fromARGB(0xFF, 0xea, 0x54, 0x55),
            fontSize: 18.0,
            fontFamily: "Lato",
          ),
        ),
      ),
            ),
          ),
          ),

          ],
        ),
      ),
    );
  }

  

  
 

  
}