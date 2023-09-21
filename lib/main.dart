/**
 * This programme is about coupatino and how it works
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return CupertinoApp(
     home: HomePage(),
   );
  }

}
class HomePage extends StatelessWidget{
  const HomePage({super.key});
  MySnackBar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.home),
        middle: Text('Home page'),
        trailing: CupertinoSwitch(
          onChanged: (bool onChange){

          }, value: true,
        ),
      ) ,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text("Apple work page"),
            Text('Apple work page'),
            Text('Apple work page'),
            CupertinoButton.filled(
                child: Text('Enter the button') ,
                onPressed: (){}
            ),
            CupertinoTextField(),
            CupertinoTabBar(items: [
              BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Person'),
              BottomNavigationBarItem(icon: Icon(Icons.message),label: 'Message'),
              BottomNavigationBarItem(icon: Icon(Icons.email),label: 'Email'),
            ])
          ],
        ),
      ),
    );
  }
}
/*
        ///This programme is about Fractionaly SizedBox
        FractionallySizedBox(
          widthFactor: 0.5,
          heightFactor: 0.3,
          child: Container(
            color: Colors.pink,
          ),
        ),
      ),
      ///This programme is about AspectRatio and how aspect ratio work
      Container(
        height: 300,
        width: double.infinity,
        color: Colors.red,
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 16/9,
       child: Container(
          color: Colors.green,
         child: Text('Hello world'),
        ),
      ),
      ),*/