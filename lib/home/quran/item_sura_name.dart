import 'package:flutter/material.dart';
import 'package:islami/home/quran/sura_details_screen.dart';
import 'package:islami/myTheme.dart';
import 'package:islami/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class ItemSuraName extends StatelessWidget {
  String name;
  int index;

  ItemSuraName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SuraDetails.routeName,
            arguments: SuraDetailsArgs(name: name, index: index));
      },
      child: Text(
        name,
        style: provider.appTheme == ThemeMode.dark
            ? Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(color: MyTheme.white)
            : Theme.of(context).textTheme.titleSmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
