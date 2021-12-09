import 'package:DiveSocialApp/Layout/boxWidgetComponent.dart';
import 'package:DiveSocialApp/Layout/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../themeData.dart';
import 'feedWidget.dart';

class PostPage extends StatelessWidget {
  final document = {
    'nickname': 'Liam',
  };
  RxList<String> _dropdownTextList = ['Latest', 'Popular', 'Like'].obs;
  RxString _selectedValue = 'Latest'.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildHome(context));
  }
  
  Widget _buildHome(context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: _buildDetail(context),
      ),
    );
  }

  Widget _buildDetail(context){
    return Stack(
      children: 
      [
        Container(
          width: double.infinity,
          height: sh50,
          child: 
            Image(
              image: AssetImage('assets/postSampleImage2.jpg'),
              fit: BoxFit.cover,
            ),
        ),
        buildBackgroundBox(
          margin: EdgeInsets.only(top: sh20),
          widget: 
             Container(
              color: whiteColor,
             ),
        ),
      ],
    );
  }

  Widget _buildPost(context){
    return buildBox(
      width:
        double.infinity,
      boxDecoration:
        boxDecoration(borderRadius: 5.0, boxShadow: boxShadow()),
      widget: Container(
        padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
        child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  profileComponent(AssetImage('assets/diver.jpg'),size: 40,),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      settingText('Liam', size: 16, weight: FontWeight.w600, align: TextAlign.start),
                      settingText('photographer', size: 13, color: greyColor, align: TextAlign.start)
                    ],
                  )
                ],
              ),
              SizedBox(height: 20),
              settingText("My first Diving picture!\nWhat a wonderful! XD"),
              SizedBox(height: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Image(
                  width: double.infinity,
                  height: 200,
                  image: AssetImage('assets/postSampleImage2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Wrap(
              spacing: 20,
              runSpacing: 5,
              children: [
                settingText("#firstDiving", size: 12, color: greyColor, weight: FontWeight.w500),
                settingText("#underwater", size: 12, color: greyColor, weight: FontWeight.w500),
              ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: 
                [ Row(
                    children: [
                      Row(
                        children: 
                        [
                          Icon( Icons.chat_bubble_outline, color: lightGreyColor),
                          SizedBox(width: 10),
                          settingText("1", size: 13, color: defaultColor, weight: FontWeight.w600),
                        ]
                      ),
                      SizedBox(width: 30),
                      Row(
                        children: 
                        [
                          Icon( Icons.favorite, color: heartColor),
                          SizedBox(width: 10),
                          settingText("1", size: 13, color: defaultColor, weight: FontWeight.w600),
                        ]
                      ),
                    ],
                  ),
                  settingText("september14, 2021", size: 12, color: greyColor, weight: FontWeight.w500),
                ],
              )
            ],
          ),
         
      ),
    );
  }


}
