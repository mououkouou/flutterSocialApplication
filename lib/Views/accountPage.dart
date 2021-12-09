import 'package:DiveSocialApp/Layout/boxWidgetComponent.dart';
import 'package:DiveSocialApp/Layout/profile.dart';
import 'package:DiveSocialApp/themeData.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountPage extends StatefulWidget {

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> with SingleTickerProviderStateMixin {
  
  final profileMood =['happy','excited'];
  TabController _tabController;
  ScrollController _scrollViewController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _scrollViewController = ScrollController(initialScrollOffset: 0.0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SafeArea
    (
      child: Container
      (
        color: whiteColor,
        padding: EdgeInsets.fromLTRB(sw6, 0, sw6, 0),
        child: NestedScrollView
        (
          controller: _scrollViewController,
          headerSliverBuilder: (context, innerBoxIsScrolled) 
          {
            return [
              SliverAppBar
              (
                flexibleSpace: FlexibleSpaceBar(background: _buildProfile()),
                expandedHeight: 240+sh10+sh4,
                pinned: true,
                floating: true,
                forceElevated: innerBoxIsScrolled,
                bottom: TabBar
                        (
                          tabs: 
                          [
                            Tab(text: '14 Posts',),
                            Tab(text: '30 Liked',)
                          ],
                          labelColor: defaultColor,
                          labelStyle: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorWeight: 4.0,
                          indicatorColor: pointColor,
                          unselectedLabelColor: greyColor,
                          controller: _tabController
                        ),
              )
            ];
          },
          body: TabBarView
            (children: 
              [
                _firstTab(),
                _secondTab()
              ],
              controller: _tabController,
            ),
        ),
      ),
    );
  }

  Widget _buildProfile() {
    return Padding(
      padding:EdgeInsets.only(top:sh4),
      child: Stack(children: [
        Container(
          margin: EdgeInsets.fromLTRB(10, 40, 10, 0),
          child: Column
          (
            children: [
              buildBox
              (
                boxDecoration: boxDecoration
                (
                  boxShadow: boxShadow
                  (
                    boxShadowColor: greyColor,
                    offsetX: 0,
                    offsetY: 0,       
                  )
                ),
                widget: Column
                (
                  children: 
                  [
                    Padding
                    (
                      padding: EdgeInsets.only(bottom:sh2),
                      child: Center
                      (
                        child: Column
                        (
                          children: [
                            Padding
                            (
                              padding: EdgeInsets.only(top:40+sh2),
                              child: settingText('Liam', weight: FontWeight.w600, size: 16),
                            ),
                            Text
                            (
                              'Diver',
                              style: etcTextStyle(greyColor),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row
                    (
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: 
                      [
                        buildBox
                        (
                          width: 108,
                          height: 30,
                          boxDecoration: boxDecoration(backgroundColor: mainColor,borderRadius: 8.0),
                          widget: Align
                                      (
                                        child: settingText
                                        (
                                          profileMood[0],
                                          color: boxTextColor,
                                          weight: FontWeight.w700,
                                        ),
                                      )
                        ),
                        profileMood.length >= 2 ?   
                        Row
                        (
                          children:
                          [
                            SizedBox(width: sw2),
                            buildBox
                              (
                                width: 108,
                                height: 30,
                                boxDecoration: boxDecoration(backgroundColor: mainColor,borderRadius: 8.0),
                                widget: Align
                                        (
                                          child: settingText
                                                  (
                                                    profileMood[1],
                                                    color: boxTextColor,
                                                    weight: FontWeight.w700,
                                                  ),        
                                        )
                              )
                          ]
                        )
                        :
                        Container()   
                      ],
                    ),
                    Container(
                      width: sw70,
                      padding: EdgeInsets.fromLTRB(0, sh4, 0, sh3),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: [
                                settingText('1.2K', size: 15, weight: FontWeight.w700),
                                settingText('Likes', size: 11, color: greyColor)
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                settingText('107', size: 15, weight: FontWeight.w700),
                                settingText('Followers', size: 11, color: greyColor)
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                settingText('115', size: 15, weight: FontWeight.w700),
                                settingText('Followings', size: 11, color: greyColor)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0,)
            ],
          ),
        ),
        Center(child: profileComponent(AssetImage('assets/diver.jpg'),size: 80)),
      ]),
    );
  }

  Widget _firstTab(){
    return Column(
      children: 
      [
        SizedBox(height: sh3,),
        Expanded
        (
          child: GridView.builder
                        (
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                          (
                            crossAxisCount: 3,
                            childAspectRatio: 1,
                            crossAxisSpacing: .0,
                            mainAxisSpacing: 3.0
                          ),
                          itemCount: 20,
                          itemBuilder: (BuildContext context, int index)
                            {
                              return Center
                              (
                                child: Image(image: AssetImage('assets/postSampleImage.jpg')),
                              );
                            }
                        ),
        ),
      ],
    );
  }

  Widget _secondTab(){
    return Column(
      children: 
      [
        SizedBox(height: sh3,),
        Expanded
        (
          child: GridView.builder
                        (
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
                          (
                            crossAxisCount: 3,
                            childAspectRatio: 1,
                            crossAxisSpacing: 3.0,
                            mainAxisSpacing: 3.0
                          ),
                          itemCount: 20,
                          itemBuilder: (BuildContext context, int index)
                            {
                              return Center
                              (
                                child: Image(image: AssetImage('assets/postLikedSample2.jpg')),
                              );
                            }
                        ),
        ),
      ],
    );
  }
}
