import 'package:DiveSocialApp/Layout/boxWidgetComponent.dart';
import 'package:DiveSocialApp/Layout/postComponent.dart';
import 'package:DiveSocialApp/Layout/profileComponent.dart';
import 'package:DiveSocialApp/Views/postPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../themeData.dart';

class HomePage extends StatelessWidget {
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
        child: Container
        ( 
          padding: EdgeInsets.fromLTRB(sw7, sh4, sw7, 0),
          child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: 
            [
              buildTitle("Feed"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildSubTitle("Get your favorite!"),
                  Obx(()=> 
                  buildBox(
                      width: 100,
                      height: 30,
                      boxDecoration:
                        boxDecoration(borderRadius: 20.0, boxShadow: boxShadow()),
                      widget:
                        Center(child:
                          DropdownButtonHideUnderline(
                            child: ButtonTheme(
                              alignedDropdown: true,
                              child: 
                                 DropdownButton<String>(
                                  value: _selectedValue.value,
                                  style: GoogleFonts.poppins(
                                        textStyle: TextStyle(fontSize: 13, color: greyColor)
                                  ),
                                  onChanged: (newValue){
                                      _selectedValue.value = newValue;
                                  },
                                  items: [
                                    for (var data in _dropdownTextList)
                                      DropdownMenuItem(
                                        child: new Text(
                                          data,
                                        ),
                                        value: data,
                                      )
                                ]),
                            ),
                          ),
                        ),
                    ),
                  ),
                ]
              ),
              SizedBox(
                height: 20
              ),
              _buildPost(context),
            ],
          ),
        ) 
      ),
    );
  }

  Widget _buildPost(context){
    return buildBox(
      ontap: (){
        Get.to(PostPage());
      },
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
              profileName(AssetImage('assets/diver.jpg'), "Liam", "photographer"),
              SizedBox(height: 20),
              settingText("My first Diving picture!\nWhat a wonderful! XD"),
              SizedBox(height: 10),
              displayPostPicture("Thailand", AssetImage('assets/postSampleImage2.jpg')),
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
                [ 
                  Row(
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
                  settingText("september 14, 2021", size: 12, color: greyColor, weight: FontWeight.w500),
                ],
              )
            ],
          ),
         
      ),
    );
  }

}
