import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class WhatsAppHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _WhatsAppHome();
  }

}
class _WhatsAppHome extends State<WhatsAppHome>{
    Widget build(BuildContext context){
      return Scaffold(
        appBar:PreferredSize(
          preferredSize: Size.fromHeight(70.0), // here the desired height
      child:AppBar(
          backgroundColor: Colors.lightGreen,
          title: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                children: [
                   Text("WhatsApp",style: TextStyle(color: Colors.white),),
                  SizedBox(width: 150,),
                  Icon(Icons.add_a_photo_outlined),
                  SizedBox(width: 15,),

                  Icon(Icons.search),
                  SizedBox(width: 15,),

                  Icon(Icons.menu),

                 // icon
                ],

              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.people_rounded),
                  Text("Chats",),
                  Text("Status"),
                  Text("Calls")
                ],
              )
            ],
          ),
        )
        ),
        backgroundColor: Colors.white,
        body: ListView.builder(itemBuilder:(context, index) {
          return ListTile (
            leading: CircleAvatar(
              radius:25,
              child: Text("dp"),
            ),
            title:Text("Contact name",style: TextStyle(fontWeight: FontWeight.w800,fontSize:20,),) ,
            subtitle: Text("message",),


          );

        },),

        floatingActionButton:CircleAvatar(backgroundColor: Colors.lime,
        child: Icon(Icons.message),),
      );
    }
}