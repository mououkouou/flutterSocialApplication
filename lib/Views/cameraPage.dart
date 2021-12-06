import 'package:chapter10/themeData.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CameraPage extends StatelessWidget {
  const CameraPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _chooseType(),
    );
  }

  Widget _chooseType() {
    const CameraIcon = [
      {
        'image': Image(image: AssetImage('assets/camera.png')),
        'text': 'DiveFlash Camera'
      },
      {
        'image': Image(image: AssetImage('assets/photoFilter.png')),
        'text': 'Buy Filter'
      },
      {
        'image': Image(image: AssetImage('assets/pickture.png')),
        'text': 'Edit Photo'
      },
      {
        'image': Image(image: AssetImage('assets/youtube.png')),
        'text': 'Edit Video'
      },
    ];
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            backgroundImage(AssetImage('assets/cameraChooseBackground.png')),
            Padding(
              padding: EdgeInsets.fromLTRB(sw10, 0, sw10, 0),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: sh4),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image(
                            width: 237,
                            height: 40,
                            image: AssetImage('assets/diveFlashTextLogo.png')),
                        Text('Better Picture, Better Experience',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: sh5,
                  ),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio:
                              ScreenWidth * 1.8 < ScreenHeight ? 3 / 4 : 4 / 5,
                          mainAxisSpacing: sh4,
                          crossAxisSpacing: sw3),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () => Get.toNamed('/create'),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: index <= 1
                                      ? mainColor.withOpacity(0.6)
                                      : whiteColor,
                                  border: Border.all(
                                    color: whiteColor,
                                    width: 4,
                                  )),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CameraIcon[index]['image'],
                                    SizedBox(
                                      height: sw3,
                                    ),
                                    Text(
                                      CameraIcon[index]['text'],
                                      softWrap: true,
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.poppins(
                                        textStyle: TextStyle(
                                          color: index <= 1
                                              ? whiteColor
                                              : Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ])),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

      // ],
    );
  }
}
