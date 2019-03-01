import 'package:flutter/material.dart';
import 'draggable_widget.dart';

class DraggableDemo extends StatefulWidget {
  @override
  _DraggableDemoState createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  Color _draggableColor=Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DraggableWidget(
            offset:Offset(80.0, 80.0),
            widgetColor: Colors.tealAccent,
          ),
          Center(
            child: DragTarget(
              onAccept: (Color color){
                _draggableColor=color;
              },
              builder: (context,candidateData,rejectedData){
                return Container(
                  width: 200.0,
                  height: 200.0,
                  color: _draggableColor,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}