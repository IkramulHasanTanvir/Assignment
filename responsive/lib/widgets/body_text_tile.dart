import 'package:flutter/material.dart';

class BodyTextTile extends StatelessWidget {
  const BodyTextTile({
    super.key,
    required this.crossAxisAlignment,
  });

  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(
          'FLUTTER WEB.\nTHE BASICS',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Text(
          'In this course we will go over the basics of using Flutter Web for development. Topics will include Responsive Layout, Deploying, Font Changes, Hover functionality, Modals and more.',
        ),
      ],
    );
  }
}
