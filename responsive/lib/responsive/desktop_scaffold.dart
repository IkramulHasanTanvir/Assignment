import 'package:flutter/material.dart';
import 'package:responsive/constants.dart';
import 'package:responsive/widgets/body_text_tile.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(56.0),
        child: Column(
          children: [
            myAppBar,
            const SizedBox(height: 72),
            Center(
              heightFactor: 2,
              child: Row(
                children: [
                  const Expanded(
                    child: BodyTextTile(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                  const SizedBox(width: 188),
                  joinCourseButton,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
