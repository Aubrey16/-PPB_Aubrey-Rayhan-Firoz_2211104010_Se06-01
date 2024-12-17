import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(MaterialApp(
      home: MapsScreen(),
    ));

class MapsScreen extends StatefulWidget {
  @override
  _MapsScreenState createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  static final LatLng _kMapCenter = LatLng(-17.535000, -149.569595);
  static final CameraPosition _kInitialPosition = CameraPosition(
    target: _kMapCenter,
    zoom: 11.0,
  );

  GoogleMapController? _mapController;
  LatLng _pickedLocation = _kMapCenter; 

  void _onMapTapped(LatLng position) {
    setState(() {
      _pickedLocation = position; 
    });


    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Lokasi Dipilih: ${position.latitude}, ${position.longitude}'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps Place Picker'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _kInitialPosition,
            myLocationEnabled: true,
            onMapCreated: (GoogleMapController controller) {
              _mapController = controller;
            },
            mapType: MapType.normal,
            onTap: _onMapTapped, 
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Lokasi Dipilih:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Lat: ${_pickedLocation.latitude}, Lng: ${_pickedLocation.longitude}',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _mapController?.dispose();
    super.dispose();
  }
}
