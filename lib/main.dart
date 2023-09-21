/**
 * This programme is about coupatino and how it works
 */

import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    return Scaffold(

        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Switch(value: true, onChanged: (bool value){}),
            ElevatedButton(onPressed: (){
              showDialog(context: context,
                  barrierDismissible: false,
                  builder: (context){
                   return AlertDialog(
                     title: Text('Alert!'),
                     content: Text('Please enter the setting screen'),
                     actions: [
                       TextButton(onPressed: (){}, child: Text('Yes')),
                       TextButton(onPressed: (){
                         Navigator.pop(context);
                       }, child: Text('No'))
                     ],
                   );
                  }
              );
            }, child: Text('Enter Name')),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              showModalBottomSheet(
                  isDismissible: false,
                  backgroundColor: Colors.pink,
                  barrierColor: Colors.black26,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )
                    
                  ),
                  context: context,
                  builder: (context){
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('This is bottom sheet'),
                    ],
                  ),
                );
                  }
                  );
            }, child: Text('Show bottom sheet')),
          ],
      ),
    );
  }
}
