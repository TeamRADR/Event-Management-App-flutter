import 'package:event_scheduler/new_event.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<Widget> _list = [
    
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text("Event Scheduler"),
          backgroundColor: Colors.deepPurple,
          ),
        body: ListView.builder(
          itemCount: _list.length,
          itemBuilder: ((context, index) => _list[index])),  
        floatingActionButton: Builder(builder: (context) {
          return FloatingActionButton(onPressed: () async{
            String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewEventScreen()));
            setState(() {
              _list.add(SizedBox(width: 5, child: Card(margin: EdgeInsets.all(30), child: SizedBox(width: 10,height: 100,child: Center(child: Text(newText,style: TextStyle(fontStyle: FontStyle.italic,fontSize: 20)))))));
            })
            ;},
            child: Icon(Icons.add),
            backgroundColor: Colors.deepPurple,
            
            );})));} 
}