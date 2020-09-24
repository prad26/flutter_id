import 'package:flutter/material.dart';
import 'devices.dart';
import 'device_card.dart';

void main() {
  runApp(MaterialApp(
    home: FlutterCard(),
  ));
}

class FlutterCard extends StatefulWidget {
  @override
  _FlutterCardState createState() => _FlutterCardState();
}

class _FlutterCardState extends State<FlutterCard> {
  int ninjaLevel = 16;
  List<Devices> devices = [
    Devices(company: 'HTC', model: 'HD Mini'),
    Devices(company: 'HTC', model: 'One V'),
    Devices(company: 'OnePlus', model: '2'),
    Devices(company: 'OnePlus', model: '3T'),
    Devices(company: 'OnePlus', model: '6T'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Flutter ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/android.jpg'),
                radius: 60,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Pradyumna',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'CURRENT NINJA LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    setState(() {
                      ninjaLevel--;
                    });
                  },
                  icon: Icon(Icons.remove),
                  tooltip: 'Reduce Level',
                  color: Colors.grey[500],
                ),
                Text(
                  '$ninjaLevel',
                  style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      ninjaLevel++;
                    });
                  },
                  icon: Icon(Icons.add),
                  tooltip: 'Increase Level',
                  color: Colors.grey[500],
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10),
                Text(
                  'pradyumna.banakar@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            Divider(
              height: 60,
              color: Colors.grey[700],
            ),
            Text(
              'DEVICES',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: devices
                  .map((device) => DeviceCard(
                        device: device,
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
