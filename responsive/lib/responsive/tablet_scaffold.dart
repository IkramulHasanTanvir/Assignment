import 'package:flutter/material.dart';
import 'package:responsive/constants.dart';
import 'package:responsive/widgets/body_text_tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(56.0),
        child: Column(
          children: [
            myAppBar,
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.all(48.0),
              child: BodyTextTile(
                crossAxisAlignment: CrossAxisAlignment.center,
              ),
            ),
            const SizedBox(height: 24),
            joinCourseButton,
          ],
        ),
      ),
    );
  }
}
