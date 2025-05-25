import 'package:fluent_ui/fluent_ui.dart';

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return FluentApp(
      home: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(color: Colors.blue, width: 100, height: 50),
            Container(color: Colors.red, width: 100, height: 50),
          ],
        ),
      ),
    );
  }
}
