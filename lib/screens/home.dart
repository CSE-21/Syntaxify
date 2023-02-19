import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  List<Widget> l =[Text("1"),Text("2"),Text("3")];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Syntaxify'),
        backgroundColor: Colors.grey.shade800,
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text('To')),
                  Expanded(
                    child: CupertinoPicker(itemExtent: 32, onSelectedItemChanged: (selectedIndex) {
                      print(selectedIndex);
                    }, children: l),
                  )
                ],
              ),
              SizedBox(height: 15,)
              ,
              Row(
                children: [
                  Expanded(
                      child: Text('From')),
                  Expanded(
                    child: CupertinoPicker(itemExtent: 32, onSelectedItemChanged: (selectedIndex) {
                      print(selectedIndex);
                    }, children: l),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                width: double.maxFinite,
                  height: 40,
                  child: TextFormField()
            ],
          )
        ),
      ),
    );
  }
}
