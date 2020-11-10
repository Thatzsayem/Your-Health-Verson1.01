import 'package:flutter/material.dart';
import 'package:yourhealth/view/widgets/user_avatar.dart';

class PatientHistoryPage extends StatefulWidget {
  @override
  _PatientHistoryPageState createState() => _PatientHistoryPageState();
}

class _PatientHistoryPageState extends State<PatientHistoryPage> {
  List<String> _conversationList = [
    'Patient 1',
    'Patient 2',
    'Patient 3',
    'Patient 4',
    'Patient 5',
    'Patient 6',
    'Patient 7',
    'Patient 8',
    'Patient 9',
    'Patient 10',
    'Patient 11',
  ];
  bool isOnline = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Patient History'),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UserAvatar(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Doctor Stranger',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              color: Colors.grey,
                              alignment: Alignment.center,
                              child: Text('Treatments: 20'),
                            ),
                            SizedBox(width: 5),
                            Container(
                              color: Colors.grey,
                              alignment: Alignment.center,
                              child: Text('Booked: 5'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Switch(
                      value: isOnline,
                      onChanged: (value) {
                        setState(() {
                          isOnline = value;
                        });
                      },
                      activeColor: Colors.green,
                      activeTrackColor: Colors.lightGreenAccent,
                    ),
                    Container(
                      color: Colors.grey,
                      alignment: Alignment.center,
                      child: Text(isOnline ? 'Online' : 'Offline'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Flexible(
              child: ListView(
                  scrollDirection: Axis.vertical,
                  children: List.generate(
                    _conversationList.length,
                    (index) => ListTile(
                      onTap: () {},
                      title: Text(_conversationList[index]),
                      leading: Icon(Icons.person_outline_rounded),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
