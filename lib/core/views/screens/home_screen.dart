import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomeScreen'),),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(child: Text('Application HomeScreen',style: Theme.of(context).textTheme.bodyLarge,)),
                Text('Welcom Flutter',style: Theme.of(context).textTheme.bodyLarge?.copyWith(fontSize: 20),),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){}, child: Text('Click here')),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){}, child: Text('Save data')),


          ]
      )
    ),);
  }
}
