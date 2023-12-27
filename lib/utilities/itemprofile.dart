import 'package:flutter/material.dart';

itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      width: 350,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Colors.deepOrange.withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 10
            )
          ]
      ),
      child: ListTile(
        title: Text(title,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle,
          style: TextStyle(fontSize: 20),
        ),
        leading: Icon(iconData),
        tileColor: Colors.white,
      ),
    );
  }