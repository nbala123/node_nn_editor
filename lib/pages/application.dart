import 'package:fluent_ui/fluent_ui.dart';
import 'package:node_editor/node_editor.dart';

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
      theme: FluentThemeData(menuColor: Colors.red),
      home: LayoutBuilder(
        builder: (context, constraints) {
          final double maxSize =
              (constraints.maxWidth > constraints.maxHeight)
                  ? constraints.maxWidth
                  : constraints.maxHeight;
          final double canvasSize = maxSize * 2;

          return Column(
            children: [
              Container(
                color: const Color.fromARGB(255, 30, 30, 30),
                child: MenuBar(
                  items: [
                    MenuBarItem(
                      title: 'hello',
                      items: [
                        MenuFlyoutItem(
                          text: Text('hello'),
                          onPressed: () => {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: NodeEditor(
                  controller: _controller,
                  focusNode: _focusNode,
                  background: const GridBackground(
                    backgroundColor: Color.fromARGB(255, 20, 20, 20),
                    lineColor: Color.fromARGB(255, 30, 30, 30),
                    spacing: 40.0,
                    strokeWidth: 2.0,
                  ),
                  infiniteCanvasSize: canvasSize,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
