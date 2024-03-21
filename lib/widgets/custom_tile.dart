import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/country_list.dart';
import '../models/option_list.dart';
import '../models/theme.dart';
import '../provider.dart';

class CustomTile extends StatelessWidget {
  final int index;
  final Function() onTap;
  const CustomTile({Key? key,  required this.index, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry customMargin = EdgeInsets.all(4.0);
    DataProvider dataProvider=Provider.of<DataProvider>(context);
    return Expanded(
      child: GestureDetector(
        onTap:onTap,
        child: Container(
          margin: customMargin,
          decoration: BoxDecoration(
            color: customTheme.cardColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child:Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:30,right: 20),
                child: Icon(optionsList[index]['lead'],color: customTheme.primaryColor,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(optionsList[index]['title'],style:customTheme.textTheme.bodyMedium),
              ),
              Expanded(child: Container()),
              (index==2 && dataProvider.flag!=-1)?Container(
                child: Row(
                  children: [
                    countryList[dataProvider.flag]['lead'],
                    SizedBox(width: 8,),
                    Text(countryList[dataProvider.flag]['title'],style: TextStyle(color: customTheme.primaryColor),)
                  ]
                )
              ):SizedBox(),
              Padding(
                padding: const EdgeInsets.only(left:10,right: 20),
                child: Icon(Icons.arrow_forward_ios_outlined,color: customTheme.primaryColor,),
              ),
            ],
          )
        ),
      ),
    );
  }
}
