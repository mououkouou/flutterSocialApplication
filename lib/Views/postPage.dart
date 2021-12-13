import 'package:DiveSocialApp/Layout/boxWidgetComponent.dart';
import 'package:DiveSocialApp/Layout/postComponent.dart';
import 'package:DiveSocialApp/Layout/profileComponent.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../themeData.dart';
import 'feedWidget.dart';

class PostPage extends StatelessWidget {
  final document = {
    'nickname': 'Liam',
  };
  RxBool _showDetail = false.obs;

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
        InkWell(
          onTap: () {
            
            _showDetail.value = true;
          },
          child:
            Container(
            width: double.infinity,
            height: sh40 + sh5,
            child: 
              Image(
                image: AssetImage('assets/postSampleImage2.jpg'),
                fit: BoxFit.cover,
              ),  
          ),
        ),
        SingleChildScrollView(
          child:
            buildBackgroundBox(
              margin: EdgeInsets.only(top: sh40 + sh3),
              padding: EdgeInsets.fromLTRB(30, 30, 30, 20),
              widget: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        profileName(AssetImage('assets/diver.jpg'), "Liam", "photographer"),
                        Row(
                          children: [
                            SizedBox(width: 10),
                            smallBorderBox(
                              settingText("follow", color: mainColor, size: 12),
                              color: mainColor,
                              padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                              radius: 20),
                        ]),
                      GestureDetector(
                        onTap: (){
                          showModalBottomSheet(context: context, builder: buildBottomSheet);
                        },
                        child: Icon(Icons.more_vert_outlined, size: 25),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  settingText("My first Diving picture!\nWhat a wonderful! XD"),
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
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: 
                      buildGpsWidget("128 หมู่ 3 Chakphong, Klaeng District, Rayong 21190, Thailand")
                  ),
                  SizedBox(height:300),
                ],
              ),
            ),
        ),
        GestureDetector
        (
          onTap: () => Get.back(),
          child: Container
          (
            child: Align
            (
              alignment: Alignment.topLeft,
              child: Icon(Icons.arrow_back_outlined, size: 25, color: whiteColor,),
            ),
            padding:EdgeInsets.fromLTRB(sw3, sh3, 0, 0)
          ),
        ),
        Obx(() =>
        _showDetail.value
        ? Stack(
            children: 
            [
              Container(
                child: 
                  Image(
                    width: double.infinity,
                    height: double.infinity,
                    image: AssetImage('assets/postSampleImage2.jpg'),
                    fit: BoxFit.cover,
                  ),
              ),
              GestureDetector
              (
                onTap: () {
                  _showDetail.value = false;
                },
                child: Container
                (
                  child: Align
                  (
                    alignment: Alignment.topLeft,
                    child: Icon(Icons.close, size: 30, color: whiteColor,),
                  ),
                  padding:EdgeInsets.fromLTRB(sw3, sh3, 0, 0)
                ),
              ),
            ],
          )
        : SizedBox.shrink(),
        ),
      ],
    );
  }

  Widget buildBottomSheet(BuildContext context)
  {
    final List<IconData> icons = [Icons.copy, Icons.share, Icons.report_gmailerrorred];
    List bottomSheet = ['링크 복사','공유','신고'];
    return 
    ListView.separated(
      separatorBuilder: (context, index){
        return new Divider(color: lightGreyColor);
      },
      itemCount: 3,
      itemBuilder: (context, index) {
          return 
            ListTile(
              // dense: true,
              minLeadingWidth : 20,
              leading: 
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Icon(icons[index])
                ),
              onTap: () {
              Navigator.pop(context);
              },
              title: settingText(bottomSheet[index],size: 15),
            );
          },
        );
  
      
  }
}
