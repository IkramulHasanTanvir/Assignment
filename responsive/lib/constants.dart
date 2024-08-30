import 'package:flutter/material.dart';

final myAppBar = AppBar(
  title: const Align(
    alignment: Alignment.centerLeft,
    child: Text('HUMMING\nBIRD .'),
  ),
  actions: [
    TextButton(
      onPressed: () {},
      child: const Text('Episodes'),
    ),
    const SizedBox(width: 16),
    TextButton(
      onPressed: () {},
      child: const Text('About'),
    ),
  ],
);

final joinCourseButton = ElevatedButton(
  onPressed: () {},
  child: const Text('Join course'),
);
