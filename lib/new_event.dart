import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewEventScreen extends StatefulWidget {
  
  @override
  State<NewEventScreen> createState() => _NewEventScreenState();
}

class _NewEventScreenState extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.lightBlueAccent,appBar: AppBar(
      title: Text("New Event"),backgroundColor: Colors.deepPurple,
  ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [TextField(controller: _textEditingController,maxLines: 3,style: TextStyle(color: Colors.white) ,decoration: InputDecoration(hintText: "Event",hintStyle: TextStyle(fontSize: 15.0, color: Colors.white),prefixIcon: Icon(Icons.calendar_month_outlined,color:Colors.white),border: OutlineInputBorder(borderRadius: BorderRadius.circular(40.0)),filled: true,contentPadding: EdgeInsets.all(15.0),fillColor: Colors.deepPurple),
        ),
        Builder(
          builder: (context){
            return SizedBox(width: 300, 
              child: ElevatedButton(onPressed: () {
              String newEventText = _textEditingController.text; 
              Navigator.of(context).pop(newEventText);
              },  style: ElevatedButton.styleFrom(primary: Colors.grey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ), child: Text("ADD"))
        );}
        )
        ,],
        ),
      ) ;
  }
}