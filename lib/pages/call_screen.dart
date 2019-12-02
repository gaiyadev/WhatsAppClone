import 'package:flutter/material.dart';
import 'package:whats_app/models/call_model.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, i) => new Column(
              children: <Widget>[
                new Divider(
                  height: 10.0,
                  //thickness: 1.0,
                ),
                new ListTile(
                  leading: new CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage(dummyData[i].avatar),
                  ),
                  title: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text(
                        dummyData[i].name,
                        style: new TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.call,
                        color: Color(0xff075E54),
                        // color: Color(0xff075E54),
                      ),
                    ],
                  ),
                  subtitle: new Container(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: new Text(
                      dummyData[i].message,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 14.0),
                    ),
                  ),
                )
              ],
            ));
  }
}
