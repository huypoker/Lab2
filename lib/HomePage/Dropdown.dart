import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {

  Dropdown(): super();

  final String title = "Dropdown";
  @override
  _DropdownState createState() => _DropdownState();
}

class Station{
  int id;
  String name;
  Station (this.id, this.name);

  static List<Station> getStations(){
    return <Station>[
      Station(1, "Cong ty 75"),
      Station(1, "Cong ty X"),
    ];
  }
}

class _DropdownState extends State<Dropdown> {

  List<Station> _stations = Station.getStations();
  List<DropdownMenuItem<Station>> _dropdownMenuItems;
  Station _selectedStation;
  @override
  void initState(){
    _dropdownMenuItems = buildDropdownMenuItems(_stations);
    _selectedStation = _dropdownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<Station>> buildDropdownMenuItems(List stations){
     List<DropdownMenuItem<Station>> items = List();
    for(Station station in stations){
      items.add(
        DropdownMenuItem(
          value: station, 
          child: Text(station.name),
        ),
      );
    }
    return items;
  }

  onchangeDropdownItem(Station selectedStation){
    setState(() {
          _selectedStation = selectedStation;
        });
  }


  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Text("Selection a station"),
            DropdownButton(
              value: _selectedStation,
              items: _dropdownMenuItems,
              onChanged: onchangeDropdownItem,
              ),
            SizedBox( height: 20.0,),
            Text('Selected: ${_selectedStation.name}'),
            SizedBox( height: 20.0,),
            Container(
               padding: EdgeInsets.all(20),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(16),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20 /4),
              child: Text(
                "Nhiet do",
                style: TextStyle(color: Colors.black)
              )
            )
          ]
        )
      )
    );
  }
}

