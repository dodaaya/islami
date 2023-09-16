import 'dart:math';

import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  int index = 0;
  String text = '0';
  List<String> azkar = ['سبحان الله ', 'الله اكبر', 'الحمدلله'];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Transform.rotate(
              angle: _rotation,
              child: IconButton(
                onPressed: _onPressed,
                icon: Image.asset('assets/images/sebha_pic.png'),
                iconSize: 280,
              )),
          Text('عدد التسبيحات', style: Theme.of(context).textTheme.titleMedium),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/Rectangle 3.png'),
              Text(
                text,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset('assets/images/Rectangle 4.png'),
              Text(
                azkar[index],
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ],
      ),
    );
    ;
  }

  double _rotation = 0;

  void _onPressed() {
    setState(() {
      _rotation = _rotation + (pi / 4 + new Random().nextInt(100));
      if (count < 33) {
        count++;
        text = '$count';
        print(text);
      } else {
        count = 0;
        text = '0';
        index++;
      }
    });
  }
}
