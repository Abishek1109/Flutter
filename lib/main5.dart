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

                  SizedBox(height: 100.0),
                  new Column(
                        children: [

                            new Container(
                              padding: const EdgeInsets.all(20.0),
                                child: new Image(image: AssetImage('assets/second.png')),
                            ),
                        ],
                    ),
            SizedBox(height: 25.0),

            Text(
              '''SPECIAL OFFERS TO
  OUR CUSTOMERS''',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
                fontFamily: "Lato"
              ),
            ),
            
          SizedBox(height: 20.0),

           Text(
        '''get a special discount on products
              for our customers''',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                fontFamily: "Lato",
                color: Color.fromRGBO(119, 119, 119, 0.75)
              ),
            ),

           
            
            SizedBox(height: 150.0),
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
          "Next",
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