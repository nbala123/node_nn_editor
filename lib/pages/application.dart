import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:node_editor/node_editor.dart';
import 'dart:math';

import 'package:node_nn_editor/nodes/test_node.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  final NodeEditorController _controller = NodeEditorController();
  final FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      theme: FluentThemeData(
        brightness: Brightness.dark,
        //menuColor: Color.fromARGB(255, 30, 30, 30),
        typography: Typography.raw(
          body: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        shadowColor: Colors.red,
      ),
      home: Stack(
        children: [
          // Container(
          //   color: const Color.fromARGB(255, 30, 30, 30),
          //   child: MenuBar(
          //     items: [
          //       MenuBarItem(
          //         title: 'hello',
          //         items: [
          //           MenuFlyoutItem(text: Text('hello'), onPressed: () => {}),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
          Positioned.fill(
            child: material.Material(
              //material.Material adds necessary context for the Material-based nodes. Kinda nice to not have to reinvent the wheel.
              color: Color.fromARGB(255, 0, 0, 0),
              child: NodeEditor(
                controller: _controller,
                focusNode: _focusNode,
                background: const GridBackground(
                  backgroundColor: Color.fromARGB(255, 20, 20, 20),
                  lineColor: Color.fromARGB(255, 30, 30, 30),
                  spacing: 40.0,
                  strokeWidth: 2.0,
                ),
                infiniteCanvasSize: 2000, //max(
                //   MediaQuery.of(context).size.longestSide,
                //   _controller.getMaxScreenSize().longestSide,
                // ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Color.fromARGB(100, 0, 0, 0),
              //gradient: LinearGradient(colors: [Colors.blue, Colors.purple]),
              //borderRadius: BorderRadius.only(bottomLeft: Radius.circular(4)),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: Offset(0, 0),
                ),
              ],
            ),
            child: CommandBar(
              primaryItems: [
                CommandBarButton(
                  icon: Icon(FluentIcons.add),
                  label: Text('New'),
                  onPressed: () {
                    print("adding node");
                    _controller.addNode(
                      exampleNode('9'),
                      NodePosition.custom(Offset(100, 600)),
                    );
                    print(_controller.nodes);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
