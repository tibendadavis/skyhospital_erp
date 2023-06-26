import 'package:flutter/material.dart';

import 'package:skyhospital_erp/components/heading2.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/inputFile.comp.dart';
import 'package:skyhospital_erp/components/inputOptions.comp.dart';
import 'package:skyhospital_erp/components/inputTextField.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class addJobApplication extends StatefulWidget {
  const addJobApplication({super.key});

  @override
  State<addJobApplication> createState() => _addJobApplicationState();
}

class _addJobApplicationState extends State<addJobApplication>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  bool conctactinfo = false;

  bool signup = true;

  bool payment = false;
  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    scaleAnimation = CurvedAnimation(
        parent: controller, curve: Curves.fastLinearToSlowEaseIn);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            margin: EdgeInsets.only(
                top: Responsive.isDesktop(context) ? 20 : 50,
                bottom: Responsive.isDesktop(context) ? 20 : 50),
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: SingleChildScrollView(
                child: SizedBox(
              width: Responsive.isDesktop(context)
                  ? size.width / 2
                  : size.width - 20,
              child: Expanded(
                  child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(
                        top: Insets().appPadding,
                        left: Insets().appPadding * 2,
                        right: Insets().appGap),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Heading2(
                          value: "JOB APPLICATION",
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Heading3(
                          value: "Application Information",
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(
                        top: Insets().appPadding,
                        bottom: Insets().appPadding,
                        left: Insets().appPadding,
                        right: Insets().appPadding),
                    margin: EdgeInsets.all(Insets().appPadding),
                    decoration: BoxDecoration(
                        color: Palette().primaryColorLight,
                        borderRadius:
                            BorderRadius.circular(Insets().appRadius)),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        width:
                            Responsive.isDesktop(context) ? null : size.width,
                        child: Flex(
                          direction: Responsive.isDesktop(context)
                              ? Axis.horizontal
                              : Axis.horizontal,
                          mainAxisAlignment: Responsive.isDesktop(context)
                              ? MainAxisAlignment.start
                              : MainAxisAlignment.start,
                          crossAxisAlignment: Responsive.isDesktop(context)
                              ? CrossAxisAlignment.start
                              : CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: Responsive.isDesktop(context) ? 220 : 150,
                              height: Responsive.isDesktop(context) ? 50 : 40,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: !signup
                                          ? Colors.white
                                          : Palette().primaryColor,
                                      side: BorderSide(
                                        width: 1,
                                        color: !signup
                                            ? Colors.black
                                            : Colors.transparent,
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              Insets().appRadiusMin + 4)),
                                      padding: EdgeInsets.only(
                                          left: Insets().appPadding / 1.5,
                                          right: Insets().appPadding / 1.5,
                                          top: Insets().appPadding,
                                          bottom: Insets().appPadding)),
                                  child: HeadingText(
                                    size:
                                        Responsive.isDesktop(context) ? 14 : 12,
                                    value: "Job Application",
                                    color:
                                        !signup ? Colors.black : Colors.white,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(
                        top: Insets().appPadding,
                        bottom: Insets().appPadding,
                        left: Insets().appPadding,
                        right: Insets().appPadding),
                    margin: EdgeInsets.only(
                        top: 0,
                        left: Insets().appPadding,
                        right: Insets().appPadding,
                        bottom: Insets().appPadding),
                    decoration: BoxDecoration(
                        color: Palette().primaryColorLight,
                        borderRadius:
                            BorderRadius.circular(Insets().appRadius)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Visibility(
                          visible: signup,
                          maintainState: true,
                          child: Container(
                            width: !Responsive.isDesktop(context)
                                ? MediaQuery.of(context).size.width
                                : MediaQuery.of(context).size.width / 1.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                inputOptions(
                                  title: "Jobs",
                                  opt1: "",
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputTextField(title: "Name", hintText: "Name"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputTextField(
                                    title: "Email",
                                    hintText: "e.g. johndoe@example.com"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputTextField(
                                    title: "Phone", hintText: "e.g. 987654321"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(
                                  title: "Experience",
                                  opt1: "Fresher",
                                  opt2: "1-2 Years",
                                  opt3: "3-4 Years",
                                  opt4: "5-6 Years",
                                  opt5: "7-8 Years",
                                  opt6: "9-10 Years",
                                  opt7: "Over 15 Years",
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputTextField(
                                    title: "Current Location",
                                    hintText: "e.g. Dar es Salaam"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(
                                  title: "Notice Period",
                                  opt1: "15 Days",
                                  opt2: "30 Days",
                                  opt3: "45 Days",
                                  opt4: "60 Days",
                                  opt5: "75 Days",
                                  opt6: "90 Days",
                                  opt7: "More than 90 Days",
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(
                                  title: "Status",
                                  opt1: "All",
                                  opt2: "Applied",
                                  opt3: "Interview",
                                  opt4: "Hired",
                                  opt5: "Rejected",
                                  opt6: "Phone Screen",
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(
                                  title: "Application Source",
                                  opt1: "Linkedin",
                                  opt2: "Facebook",
                                  opt3: "Instagram",
                                  opt4: "Twitter",
                                  opt5: "Other",
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputFile(heading: "Cover Letter"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 40
                                          : 40,
                                      width: Responsive.isDesktop(context)
                                          ? 90
                                          : 90,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            backgroundColor:
                                                Palette().primaryColor,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        onPressed: () {
                                          setState(() {});
                                        },
                                        child: Center(
                                            child: HeadingText(
                                          size: Responsive.isDesktop(context)
                                              ? 15
                                              : 15,
                                          value: "Save",
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
            )),
          ),
        ),
      ),
    );
  }
}
