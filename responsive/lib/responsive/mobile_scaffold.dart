import 'package:flutter/material.dart';
import 'package:responsive/constants.dart';
import 'package:responsive/widgets/body_text_tile.dart';

class MobileScaffold extends StatelessWidget {
  const MobileScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text('HUMMING\nBIRD .'),
        ),
      ),
      drawer: _buildDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.all(48.0),
            child: BodyTextTile(
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
          ),
          joinCourseButton
        ],
      ),
    );
  }

  Drawer _buildDrawer() {
    return Drawer(
      child: Column(
        children: [
          Container(
            color: Colors.greenAccent.shade400,
            width: double.infinity,
            child: DrawerHeader(
                child: Column(
              children: [
                const Text(
                  'SKILL UP NOW',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'TAP HERE',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.ondemand_video),
                  title: Text('Episodes'),
                ),
                SizedBox(height: 42),
                ListTile(
                  leading: Icon(Icons.announcement),
                  title: Text('About'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
