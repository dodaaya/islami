import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 350, child: Image.asset('assets/images/radio_image.png')),
        Text('إذاعة القرآن الكريم',
            style: Theme.of(context).textTheme.titleMedium),
        SizedBox(
          height: 40,
        ),
        Image.asset('assets/images/play_radio.png')
      ],
    );
  }
}
