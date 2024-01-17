import 'dart:convert';

import 'package:abjatenant/components/buttons.dart';
import 'package:abjatenant/constants/app_colors.dart';
import 'package:abjatenant/constants/app_fonts.dart';
import 'package:abjatenant/utils/local_storage.dart';
import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../../../constants/app_images.dart';
import '../../../constants/app_routes.dart';
import '../../../constants/resources.dart';

class CreateRequest extends StatefulWidget {
  const CreateRequest({Key? key}) : super(key: key);

  @override
  _CreateRequestState createState() => _CreateRequestState();
}

class _CreateRequestState extends State<CreateRequest> {
  int selectedIndex = -1;
  bool isNotSelected = true;


  @override
  void initState() {
 
    isNotSelected;
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _getSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFF6F9F5),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.asset(
                        AppImages.back,
                        width: 36,
                      ),
                    ),
                    Text("Make A Request"),
                    Text("")
                  ],
                ),
              ),
              SizedBox(
                height: _getSize.height * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "What do you need?",
                      style: AppFonts.boldText.copyWith(
                          fontSize: 16,
                          color: Pallete.black,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        width: _getSize.width,
                        height: _getSize.height * 0.65,
                        child: ListView.builder(
                            itemCount: services.length,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 4.0, vertical: 8),
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Pallete.whiteColor),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            services[index]['icon'],
                                            color: Color(0xFF47893F),
                                            width: 24,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          Text(
                                            services[index]['text'],
                                            style: AppFonts.bodyText.copyWith(
                                                color: Color(0xFF47893F)),
                                          ),
                                          Checkbox(
                                            value: selectedIndex == index,
                                            onChanged: (value) {
                                              setState(() {
                                                selectedIndex =
                                                    value! ? index : -1;
                                                isNotSelected = !isNotSelected;
                                                print(isNotSelected);
                                              });
                                            },
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(
                                                  5), // Adjust the radius as needed
                                              side: BorderSide(
                                                color: Colors
                                                    .green, // Set the border color
                                                width:
                                                    0.5, // Set the border width
                                              ),
                                            ),

                                            activeColor: Colors
                                                .green, // Set the checkbox color
                                            checkColor: Colors
                                                .white, // Set the checkmark color
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            })),
                  ],
                ),
              ),
              SizedBox(
                height: _getSize.height * 0.1,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ButtonWithFuction(
                    disabled: isNotSelected,
                    text: 'Submit',
                    onPressed: () {
                      Navigator.of(context).pushNamed(AppRoutes.requestDetails);
                    }),
              ),
              SizedBox(
                height: _getSize.height * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
