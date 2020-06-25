import 'package:flutter/material.dart';
import 'login_page.dart';
import 'signup.dart';

class HomePage extends StatelessWidget {
  @override
  static String tag = 'home-page';
  Widget build(BuildContext context) {
     final profilepic = Hero(
       tag: 'hero',
       child: Padding(
         padding: EdgeInsets.all(16.0),
         child: CircleAvatar(
           radius: 72.0,
           backgroundColor: Colors.transparent,
           backgroundImage: AssetImage('assets/linkedin.jpg'),
         )
       ),
     );

     final welcome = Padding(
       padding: EdgeInsets.all(8.0),
       child: Text(
         'Kennedy',
         style: TextStyle(fontSize: 28.0, color: Colors.black),
       ),
     );

     final bio = Padding(
       padding: EdgeInsets.all(8.0),
       child: Text(
         'Aspiring Software Engineer from New York that works primarily on the Back-End, but doesnt mind Front-End or even Mobile Dev',
         style: TextStyle(fontSize: 16.0, color: Colors.black),
       ),
     );

     final fav = Padding(
       padding: EdgeInsets.all(8.0),
       child: Text(
         'Do your best, and leave the rest to the most high',
         style: TextStyle(fontSize: 16.0, color: Colors.black),
       ),
     );

     final logout = Padding(
       padding: EdgeInsets.symmetric(vertical: 16.0),
       child: RaisedButton(
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(24),
         ),
         onPressed: (){
           Navigator.of(context).pushNamed(LoginPage.tag);
         },
         padding: EdgeInsets.all(12),
         color: Colors.green,
         child: Text('Logout', style: TextStyle(color: Colors.white, fontSize: 17.0)),
       ),
     );

     final body = Container(
       width: MediaQuery.of(context).size.width,
       padding: EdgeInsets.all(28.0),
       decoration: BoxDecoration(
         gradient: LinearGradient(colors: [
           Colors.yellow[200],
           Colors.yellow[200],
         ]),
       ),
       child: Column(
         children: <Widget>[
           profilepic,welcome,bio,fav,logout],
       ),
     );

     return Scaffold(
       body: body,
     );
  }
}
