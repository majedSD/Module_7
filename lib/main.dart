import 'package:flutter/material.dart';

/// Navigation - one page -> another page
/// Navigator 1(Simple and Lengthy), 2 (complex)
/// Routers Package -> Getx, GoRouter, Auto Route

/// TODO : Stack, Queue, Navigator, Navigation

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

/// Route
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                /// Navigation - Route home -> Route settings
                /// Navigator
                /// Navigator.typeOfNavigation(currentLocation, Destination);
                /// Navigation - Push, Pop(Back), replace, replaceAll, removeUntil
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ),
                );
              },
              child: Text('Go to settings'),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                /// Navigation - Route home -> Route settings
                /// Navigator
                /// Navigator.typeOfNavigation(currentLocation, Destination);
                /// Navigation - Push, Pop(Back), replace, replaceAll, removeUntil
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrdersScreen(),
                  ),
                );
              },
              child: Text('Go to Orders'),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context)=>ProductList(),
                ),
                );
              },
              child: Text('Go to Product list'),
            ),
          ],
        ),
      ),
    );
  }
}

/// Route
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Settings',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                      (route) => false,
                );
              },
              child: Text('Home'),
            )
          ],
        ),
      ),
    );
  }
}

/// Route
class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Orders',
              style: TextStyle(fontSize: 24),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductList(),
                  ),
                );
              },
              child: Text('Go to Product List'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to home'),
            )
          ],
        ),
      ),
    );
  }
}
class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (context,index){
           return ListTile(
                   onTap: (){
                     Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=>ProductDetails(num:index.toString()),
                        ),
                         );
                   },
              title: Text(index.toString()),
             subtitle: Text('This is product no ${(index+1).toString()}'),
            );
          }
      )
    );
  }
}
class ProductDetails extends StatelessWidget {
 final String num;
  const ProductDetails({super.key,required this.num});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ProductDetails'),
      ),
      body: Center(
         child: Column(
           children: [
             Text('Your selected product is $num'),
             ElevatedButton(onPressed: (){
               Navigator.pop(context);
             }, child: Text('Back'))
           ],
         ),
      ),
    );
  }
}