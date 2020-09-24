import 'package:flutter/material.dart';
import 'devices.dart';

class DeviceCard extends StatelessWidget {
  final Devices device;
  final Function delete;

  DeviceCard({this.device, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[850],
      margin: EdgeInsets.fromLTRB(0, 8, 8, 0),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              device.company,
              style: TextStyle(
                fontSize: 20,
                color: Colors.amberAccent,
              ),
            ),
            subtitle: Text(
              device.model,
              style: TextStyle(fontSize: 16, color: Colors.amberAccent[700]),
            ),
            trailing: IconButton(
              onPressed: delete,
              icon: Icon(Icons.delete),
              tooltip: 'Delete Device',
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    );
  }
}

/*

return Card(
      color: Colors.grey[850],
      margin: EdgeInsets.fromLTRB(0, 12, 12, 0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  device.company,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.amberAccent,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  device.model,
                  style: TextStyle(fontSize: 16, color: Colors.amberAccent[700]),
                ),
                SizedBox(
                  height: 4,
                ),
              ],
            ),
          ],
        ),
      ),
    );

 */
