//THIS IS COPY-PASTED FROM THE DOCUMENTATION JUST TO TEST IF IT WORKS!!!!
//WILL BE REPLACES WITH CUSTOM NODES LATER!!!!!
import 'package:node_editor/node_editor.dart';
import 'package:flutter/material.dart';

NodeWidgetBase exampleNode(String name) {
  return ContainerNodeWidget(
    name: name,
    typeName: 'node_3',
    backgroundColor: Colors.blue.shade800,
    radius: 10,
    width: 200,
    contentPadding: const EdgeInsets.all(4),
    selectedBorder: Border.all(color: Colors.white),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InPortWidget(
              name: 'PortIn1',
              onConnect: (String name, String port) => true,
              icon: Icon(
                Icons.circle_outlined,
                color: Colors.yellowAccent,
                size: 20,
              ),
              iconConnected: Icon(
                Icons.circle,
                color: Colors.yellowAccent,
                size: 20,
              ),
              multiConnections: false,
              connectionTheme: ConnectionTheme(
                color: Colors.yellowAccent,
                strokeWidth: 2,
              ),
            ),
          ],
        ),
        Icon(Icons.safety_divider),
        OutPortWidget(
          name: 'PortOut1',
          icon: Icon(
            Icons.pause_circle_outline,
            color: Colors.deepOrange,
            size: 24,
          ),
          iconConnected: Icon(
            Icons.pause_circle,
            color: Colors.deepOrange,
            size: 24,
          ),
          multiConnections: false,
          connectionTheme: ConnectionTheme(
            color: Colors.deepOrange,
            strokeWidth: 2,
          ),
        ),
      ],
    ),
  );
}
