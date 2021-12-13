import 'dart:io';
import 'package:DiveSocialApp/Layout/boxWidgetComponent.dart';
import 'package:DiveSocialApp/Layout/commonComponent.dart';
import 'package:DiveSocialApp/themeData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CreatePage extends StatefulWidget {
//  final FirebaseUser user;

//  CreatePage(this.user);

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getImage();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    _image = null;
    super.dispose();
  }

  File _image;

  // 갤러리에서 사진 가져오기
  Future _getImage() async {
    File image = await ImagePicker.pickImage(
      source: ImageSource.gallery,
    );
    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainBackgroundColor,
      appBar: _buildAppBar(context),
      body: keyboardDown(
        context: context,
        child: _buildBody()),
    );
  }
  
  Widget _buildAppBar(BuildContext context) {
    return AppBar(
      title: Image(image: AssetImage('assets/ic_arrow_back.png'),),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            _uploadFile(context);
          },
          child: settingText('Done',size: 15.0, weight: FontWeight.bold),
        )
      ],
    );
  }

  Future _uploadFile(BuildContext context) async {
    // 스토리지에 업로드할 파일 경로

    // 파일 업로드

    // 완료까지 기다림

    // 업로드 완료 후 url

    // 문서 작성

    // 완료 후 앞 화면으로 이동
    Get.back();
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
                _buildImage(),
                buildBackgroundBox
                (
                  padding : EdgeInsets.fromLTRB(sw7, sh5, sw7, sh5),
                  widget: Column
                    (
                      children:
                      [
                        Container(
                          padding: EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
                          height: sh20+sh5+10,
                          decoration: BoxDecoration
                                          (
                                            borderRadius: BorderRadius.circular(10),
                                            border: Border.all(color: Colors.black12,width: 1.0)
                                            ),
                          child: Column(
                            children: [
                              Container(
                                height: sh20,
                                child: TextField
                                (
                                maxLines: null,
                                controller: textEditingController,
                                decoration: InputDecoration
                                  (
                                    border: InputBorder.none,
                                    hintText: 'Write content',
                                    hintStyle: TextStyle
                                    (
                                      color: boxTextColor
                                    )
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: smallFillBox
                                  (Center(
                                    child: settingText
                                      (
                                        '#hasTag',
                                        color: greyColor,
                                        size: 13,
                                        weight: FontWeight.w600
                                      ),
                                  ),
                                    width: 95.0,
                                    height: sh4,
                                    color: brightGreyColor,
                              
                                  ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: sh3,),
                        smallFillBox
                        (
                         Row
                         (
                           children: 
                           [
                             Row
                             (
                               children: 
                               [
                                 Center(
                                   child: settingText
                                   (
                                     'GPS',
                                     color: mainColor
                                    ),
                                 )
                               ],
                              )
                           ],
                           )
                        ),
                        Divider(),
                        ListTile(
                          leading: Text('위치 추가하기'),
                        ),
                        Divider(),
                        _buildLocation(),
                        ListTile(
                          leading: Text('위치 추가하기'),
                        ),
                        ListTile(
                          leading: Text('Facebook'),
                          trailing: Switch(
                            value: false,
                            onChanged: (bool value) {},
                          ),
                        ),
                        ListTile(
                          leading: Text('Twitter'),
                          trailing: Switch(
                            value: false,
                            onChanged: (bool value) {},
                          ),
                        ),
                        ListTile(
                          leading: Text('Tumblr'),
                          trailing: Switch(
                            value: false,
                            onChanged: (bool value) {},
                          ),
                        ),
                        Divider(),
                        ListTile(
                          leading: Text(
                            '고급 설정',
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey[800],
                            ),
                          ),
                        ),
                      ]
                    ),
                ),
        ],
      ),
    );
  }

  Widget _buildImage() {
    return Padding(
      
      padding: EdgeInsets.fromLTRB(0, sh3, 0, sh3),
      child: _image == null
          ? Container
          (
            width:ScreenWidth,
            height: sh30,
            child: Image(image: AssetImage('assets/plus.png'),)
          )
          : Image.file(
              _image,
              width: ScreenWidth,
              height: sh30,
              fit: BoxFit.contain,
            ),
    );
  }

  Widget _buildLocation() {
    final locationItems = [
      '유림집',
      '난화집',
      '제주시 용담로',
      '삼양해수욕장',
      '이호해수욕장',
      '검색',
    ];
    return SizedBox(
      height: 34.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: locationItems.map(
          (location) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Chip(
              label: Text(
                location,
                style: TextStyle(fontSize: 12.0),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
