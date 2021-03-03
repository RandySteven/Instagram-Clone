import 'package:flutter/material.dart';
import 'package:instagram_application/home.dart';

void main(){
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: 
          Center(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.red, Colors.purple, Colors.red, Colors.orange, Colors.yellow[500]]
                )
              ),
              child:Column(
                  children:[
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ImageLogo(),
                          InstagramTitle(),
                          UsernameTextField(),
                          PasswordTextField(),
                          LoginButton(),
                          RegisterButton()
                        ],  
                      )
                      
                    )
                  ]
                )
            ),
          )
        )
      ),
    );
  }

}

class ImageLogo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Image.network("https://i.pinimg.com/564x/8f/8f/b4/8f8fb43ce828a22c91c0b59f55fb91b3.jpg", 
    width: 90.0,
    height: 90.0,);
  }
}

class InstagramTitle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Instagram', style: TextStyle(fontSize: 18.0, color: Colors.white, fontFamily: 'RobotoMono'),)
    );
  }
}

class UsernameTextField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: TextField(
        style: TextStyle(
          color: Colors.white
        ),
        decoration: InputDecoration(
          hintText: 'Username',
          hintStyle: TextStyle(
            color: Colors.white
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red[200]
            )
          )
        ),
      ),
    );
  }
}

class PasswordTextField extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Password',
          hintStyle: TextStyle(
            color: Colors.white
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white
            )
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red[500]
            )
          )
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),      
      child: ButtonTheme(
        minWidth: 300.0,
        child:RaisedButton(
        color: Colors.blue[800],
        child: Text('Login'),
        onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
        },
        textColor: Colors.white,
      ),
    )
    );
  }
}

class RegisterButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),      
      child: ButtonTheme(
        minWidth: 300.0,
        child:RaisedButton(
        color: Colors.blue[800],
        child: Text('Register'),
        onPressed: (){

        },
        textColor: Colors.white,
      ),
    )
    );
  }
}