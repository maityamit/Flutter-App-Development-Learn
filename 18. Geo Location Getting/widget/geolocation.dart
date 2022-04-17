import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:fluttertoast/fluttertoast.dart';


class LocationWidget extends StatefulWidget {
  const LocationWidget({Key? key}) : super(key: key);

  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {

  Position? position;

  fetchpostion()async{
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled){
      Fluttertoast.showToast(
          msg: "Lol ! Your location service disabled ",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 2,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0
      );
    }
    permission = await Geolocator.checkPermission();
    if(permission==LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if(permission == LocationPermission.denied){
        Fluttertoast.showToast(msg: "You denied the permission");
      }
    }
    if(permission==LocationPermission.deniedForever){
      Fluttertoast.showToast(msg: "You denied the permission");
    }
    Position current_pos = await Geolocator.getCurrentPosition();
    setState(() {
      position = current_pos;
      String lat = current_pos.latitude.toString();
      String lan = current_pos.longitude.toString();
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Geo Location"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(position==null?"Location":position.toString(),style: TextStyle(fontSize: 20,color: Colors.blue),),
            ElevatedButton(
                onPressed: (){
                  fetchpostion();
                },
                child: Text("Get Location"))
          ],
        ),
      ),
    );
  }
}
