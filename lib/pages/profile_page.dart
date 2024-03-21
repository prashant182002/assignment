import 'package:assignment/models/option_list.dart';
import 'package:assignment/models/theme.dart';
import 'package:assignment/pages/country_selection.dart';
import 'package:assignment/widgets/custom_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/divider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    EdgeInsetsGeometry customMargin = EdgeInsets.all(4.0);

    return Scaffold(
      backgroundColor: customTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: customTheme.backgroundColor,
        title: Text('My Profile',style: customTheme.textTheme.headlineLarge,),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height*0.9,
          width: MediaQuery.of(context).size.width*0.98,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.2,
                child: Column(
                  children: [

                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage('assets/images.jpg'),
                            // fit: BoxFit.cover,
                          ),
                          shape: BoxShape.circle,
                        ),
                        )
                      ),
                    Text('Michael Watson',style: customTheme.textTheme.headlineMedium),
                    Text('(203) 2563-8542',style: customTheme.textTheme.headlineSmall)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Dividerr(),
              SizedBox(height: 20,),
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height*0.4,
                  child:Column(
                    children: [
                      CustomTile(index: 0, onTap: (){}),
                      CustomTile(index: 1, onTap: (){}),
                      CustomTile(index: 2, onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const CountrySelection(
                          )),
                        );
                      }),
                      CustomTile(index: 3, onTap: (){}),
                      CustomTile(index: 4, onTap: (){}),
                      CustomTile(index: 5, onTap: (){})
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){},
                  style: ButtonStyle(
                    side: MaterialStateProperty.all<BorderSide>(
                      BorderSide(width: 1, color: customTheme.primaryColor), // Define border width and color
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(customTheme.backgroundColor),
                  ),
                  child: Center(
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.07,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.all(10),
                              child: Icon(
                                Icons.logout_outlined,color: customTheme.primaryColor,
                              )
                          ),
                          Text('Log Out',style: customTheme.textTheme.labelMedium,)
                        ],
                      ),
                    ),
                  )
              ),
              SizedBox(height: 40,)
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(50)),
        child: BottomAppBar(
          height: MediaQuery.of(context).size.height*0.08,
          color: customTheme.cardColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(child: Container(child: IconButton(icon: Icon(color: customTheme.primaryColor, Icons.home), onPressed: () {  },)),),
              Expanded(child: IconButton(color: customTheme.primaryColor ,icon: Icon(Icons.calendar_month_outlined), onPressed: () {  },),),
              Expanded(child: new Text('')),
              Expanded(child: IconButton(icon: Icon(color: customTheme.primaryColor ,Icons.bookmark_border_outlined), onPressed: () {  },),),
              Expanded(child: IconButton(icon: Icon(color: customTheme.primaryColor, Icons.person), onPressed: () {  },),),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          backgroundColor: customTheme.primaryColor,
          onPressed: (){ },
          child: Container(child: Icon(Icons.qr_code,color: customTheme.backgroundColor)),
          elevation: 4.0,
          shape: CircleBorder(),
        ),
      ),
      // bottomNavigationBar:
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
