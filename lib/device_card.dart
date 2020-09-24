import 'package:flutter/material.dart';
import 'devices.dart';

class DeviceCard extends StatelessWidget {
  final Devices device;

  DeviceCard({this.device});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[850],
      margin: EdgeInsets.fromLTRB(0, 12, 12, 0),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
        child: Column(
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
          ],
        ),
      ),
    );
  }
}
