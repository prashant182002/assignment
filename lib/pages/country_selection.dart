import 'package:assignment/models/theme.dart';
import 'package:flag/flag_enum.dart';
import 'package:flag/flag_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/country_list.dart';
import '../provider.dart';

class CountrySelection extends StatefulWidget {
  const CountrySelection({Key? key}) : super(key: key);

  @override
  State<CountrySelection> createState() => _CountrySelectionState();
}

class _CountrySelectionState extends State<CountrySelection> {
  int? _selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    DataProvider dataProvider=Provider.of<DataProvider>(context);
    EdgeInsetsGeometry customMargin = EdgeInsets.all(4.0);
    EdgeInsetsGeometry appBarMargin = EdgeInsets.fromLTRB(30, 0, 0, 0);
    return Scaffold(
      backgroundColor: customTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: customTheme.backgroundColor,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
              color: customTheme.cardColor,
              borderRadius: BorderRadius.circular(30), // Set the border radius
              border: Border.all(
                color: customTheme.primaryColor, // Set the border color
                width: 0.5, // Set the border width
              ),
            ),
            child: IconButton(
              color: customTheme.primaryColor,
              icon:Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
        title: Text('Country Selection',style: TextStyle(color: customTheme.primaryColor),),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height*0.9,
          width: MediaQuery.of(context).size.width*0.99,
          child: ListView.builder(
              itemCount: countryList.length,
              itemBuilder: (context,index){
                return Container(
                  child: ListTile(
                    leading: countryList[index]['lead'],
                    title: Text(countryList[index]['title'],style: TextStyle(color: customTheme.primaryColor),),
                    trailing: Radio(
                      activeColor: customTheme.primaryColor,
                      fillColor: MaterialStateProperty.all(customTheme.primaryColor),
                      value: index,
                      groupValue: _selectedValue,
                      onChanged: (value) {
                        setState((){
                          _selectedValue = value;
                          dataProvider.changeFlag(index);
                        });
                      },
                    ),
                  ),
                );
              }
          ),
        ),
      ),
    );
  }
}
