import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          Icon(Icons.directions_bike, color: Colors.grey),
          SizedBox(width: 8),
          Text("Megenagna ...", style: TextStyle(fontWeight: FontWeight.bold)),
          Icon(Icons.keyboard_arrow_down),
          Spacer(),
          Icon(Icons.notifications_none_rounded),
        ],
      ),
    );
  }
}
