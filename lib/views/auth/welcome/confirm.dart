import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../components/buttons.dart';
import '../../../components/input_field.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_fonts.dart';
import '../../../constants/app_images.dart';
import '../../../constants/app_routes.dart';

class ConfirmLandlord extends StatefulWidget {
  const ConfirmLandlord({Key? key}) : super(key: key);

  @override
  _ConfirmLandlordState createState() => _ConfirmLandlordState();
}

class _ConfirmLandlordState extends State<ConfirmLandlord> {
  String name = '';
  var photo = 'https://picsum.photos/200';
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // transparent status bar
        statusBarIconBrightness: Brightness.light // dark text for status bar
        ));
    final _getSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Pallete.onboardColor,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Stack(children: [
                  Image.asset(AppImages.banner),
                  Positioned(
                    left: _getSize.width * 0.1,
                    bottom: _getSize.height * 0.15,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Confirm your Landlord',
                          style: AppFonts.boldText.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Pallete.primaryColor,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: _getSize.height * 0.003,
                        ),
                        SizedBox(
                          width: _getSize.width * 0.7,
                          child: Text(
                            'Confirm that the individual is your landlord.',
                            maxLines: 2,
                            style: AppFonts.bodyText.copyWith(
                                fontWeight: FontWeight.w300,
                                color: Pallete.whiteColor,
                                fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
                SizedBox(
                  height: _getSize.height * 0.1,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32.0, vertical: 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: _getSize.width * 0.8,
                        height: _getSize.height * 0.08,
                        decoration: BoxDecoration(
                            color: Pallete.whiteColor,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(29, 134, 130, 130),
                                blurRadius: 11,
                                spreadRadius: 1,
                                offset: Offset(0, 5),
                              )
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(2))),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ClipOval(
                                child: Image.network(
                                  photo,
                                  width: _getSize.width * 0.14,
                                ),
                              ),
                              SizedBox(
                                width: _getSize.width * 0.03,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Landlord",
                                    style: AppFonts.bodyText.copyWith(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("Akello Buma",
                                      style: AppFonts.body1.copyWith(
                                          color: Pallete.text,
                                          fontWeight: FontWeight.w600)),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        AppImages.location,
                                        width: 14,
                                      ),
                                      SizedBox(
                                        width: 12,
                                      ),
                                      Text(
                                        "24, Commercial Avenue, Kampala",
                                        style: AppFonts.body1
                                            .copyWith(color: Pallete.text),
                                      )
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                      SizedBox(
                        height: _getSize.height * 0.3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(AppRoutes.welcomeScreen);
                            },
                            child: Container(
                              width: _getSize.width * 0.3,
                              height: _getSize.height * 0.06,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  border: Border.all(
                                      color: Pallete.primaryColor, width: 0.5),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(2))),
                              child: Center(
                                  child: Text(
                                "Cancel",
                                style: AppFonts.body1.copyWith(fontSize: 18),
                              )),
                            ),
                          ),
                          SizedBox(
                            width: _getSize.width * 0.3,
                            child: ButtonWithFuction(
                                text: "Continue",
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed(AppRoutes.registerScreen);
                                }),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: _getSize.height * 0.3,
                      ),
                      // Column(
                      //   children: [
                      //     Row(
                      //       children: [
                      //         Container(
                      //           color: Pallete.fade,
                      //           width: _getSize.width * 0.17,
                      //           height: _getSize.height * 0.0005,
                      //         ),
                      //         const Text("  Don't have a code tenant? "),
                      //         Container(
                      //           color: Pallete.fade,
                      //           width: _getSize.width * 0.17,
                      //           height: _getSize.height * 0.0005,
                      //         ),
                      //       ],
                      //     ),
                      //     SizedBox(
                      //       height: _getSize.height * 0.03,
                      //     ),
                      //     Text(
                      //       "Contact Abja properties",
                      //       style: AppFonts.body1.copyWith(
                      //           fontSize: 14,
                      //           fontWeight: FontWeight.w600,
                      //           color: Pallete.text),
                      //     ), SizedBox(
                      //       height: _getSize.height * 0.02,
                      //     ),
                      //     Padding(
                      //       padding: const EdgeInsets.symmetric(
                      //           vertical: 8.0, horizontal: 16),
                      //       child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
                      //         children: [
                      //           Image.asset(
                      //             AppImages.inbox,
                      //             width: _getSize.width * 0.05,
                      //           ),
                      //           Image.asset(
                      //             AppImages.support,
                      //             width: _getSize.width * 0.05,
                      //           ),

                      //         ],
                      //       ),
                      //     ),
                      //     SizedBox(height: _getSize.height * 0.02),
                      //     Row(
                      //       children: [
                      //         Container(
                      //           color: Pallete.fade,
                      //          width: _getSize.width * 0.38,
                      //           height: _getSize.height * 0.0005,
                      //         ),
                      //         const Text("  Or  "),
                      //         Container(
                      //           color: Pallete.fade,
                      //          width: _getSize.width * 0.38,
                      //           height: _getSize.height * 0.0005,
                      //         ),
                      //       ],
                      //     )
                      //   ],
                      // ),
                      // SizedBox(height: _getSize.height * 0.02),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
