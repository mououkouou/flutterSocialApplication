import 'package:DiveSocialApp/Layout/boxWidgetComponent.dart';
import 'package:DiveSocialApp/themeData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
class SearchPage extends StatelessWidget {
  final document = {
    'nickname': 'Liam',
  };

  RxBool texting = false.obs;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(()=> 
        texting.value? _buildSearchTrue(context) : _buildSearchFalse(context)
      ) ,
    );
  }
  
  Widget _buildSearchTrue(context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: 
            [
              Container
              ( 
                padding: EdgeInsets.fromLTRB(0, 20, 20, 0),
                child: _buildSearch(context),
              ),
              SizedBox(height: 12),
              buildTapBody(context),
            ],
          ),
        ) 
    );
  }


  Widget buildTapBody(context){
    return Expanded(
        child: 
        DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              Stack
              (
                children:
                [ Container(
                    height: 0.5,
                    margin: EdgeInsets.only(top:49),
                    color:lightGreyColor,
                  ),
                  Container(
                    constraints: BoxConstraints.expand(height: 50),
                    child: TabBar(
                      tabs: [
                        Tab(child: Text("Account",style: subTextStyle(greyColor))),
                        Tab(child: Text("Posts",style: subTextStyle(greyColor))),
                      ],
                      indicatorSize: TabBarIndicatorSize.label,
                    ),
                  ),
                 
                ]
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
                  child: TabBarView(children: [
                    Container(
                      child: _buildSearchListView(context),
                      
                    ),
                    Container(
                      child: _buildSearchPost(context),
                    ),
                  
                  ]),
                ),
              )
            ],
          ),
        ),
      );
  }

  
  Widget _buildSearchFalse(context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Container
        ( 
          padding: EdgeInsets.fromLTRB(25, 25, 25, 0),
          child: 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: 
            [
              buildTitle("Hi, "+ document['nickname']),
              buildSubTitle("What' your favorite things?"),
              SizedBox(height: sh3),
              _buildSearch(context),
              SizedBox(height: sh4),
              _buildSearchPost(context),
            ],
          ),
        ) 
      ),
    );
  }

  Widget buildTitle(String title){
    return Text(title, style: titleTextStyle(defaultColor),);
  }
  
  Widget buildSubTitle(String title){
    return Text(title, style: subTextStyle(defaultColor),);
  }

  Widget _buildSearch(context) {
    return  
       Obx(()=> 
        Row(
          children: 
          [
          texting.value 
            ? IconButton(onPressed:() => texting.value = false, icon: Icon(Icons.arrow_back_ios_new_outlined))
            : SizedBox.shrink(),
            Expanded(child: 
              buildBox(
                height: 40,
                boxDecoration:
                    boxDecoration(borderRadius: 5.0, boxShadow: boxShadow()),
                widget:
                  TextField(
                    onTap: (){
                    texting.value = true;
                    },
                    decoration: InputDecoration(

                        border: InputBorder.none,
                        hintText: "search",
                        hintStyle: TextStyle(color: lightGreyColor),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 20,
                          color: lightGreyColor,
                        )),
                  )
              ),
            ),
          ], 
        ),
      );
  }

  Widget _buildSearchPost(context){
    return
      Expanded
      (
        child: 
          GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.0,
              mainAxisSpacing: 3.0,
              crossAxisSpacing: 3.0),
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return _buildListItem();
          },
        )
      );
  }
  
  Widget _buildListItem() {
    return Image.network(
      '',
      fit: BoxFit.cover,
    );
  }
}

Widget _buildSearchListView(context){
  final List account = ['dora','heesu'];
  return ListView.separated(
          separatorBuilder: (context, index){
            return new Divider(color: lightGreyColor);
          },
          itemCount: account.length,
          itemBuilder: (context, index) {
              return 
                ListTile(
                  title: Text(account[index]),
                );
          },
        );
}