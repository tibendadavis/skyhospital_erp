import 'package:flutter/material.dart';

import 'package:skyhospital_erp/components/heading2.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/inputMultpleRadio.comp.dart';
import 'package:skyhospital_erp/components/inputTextField.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class addUserRole extends StatefulWidget {
  const addUserRole({super.key});

  @override
  State<addUserRole> createState() => _addUserRoleState();
}

class _addUserRoleState extends State<addUserRole>
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
                          value: "USER ROLE",
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Heading3(
                          value: "User Role Information",
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
                                    value: "User Role",
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
                                inputTextField(title: "Name", hintText: "Name"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputTextField(
                                  title: "Description",
                                  hintText: "Description",
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputMultipleRadio(
                                  onSelect: (val) {},
                                  heading: "Can the user login?",
                                  opt1: "Yes",
                                  opt2: "No",
                                  onlyTwo: true,
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputMultipleRadio(
                                  onSelect: (val) {},
                                  heading: "Can the user register patient?",
                                  opt1: "Yes",
                                  opt2: "No",
                                  onlyTwo: true,
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputMultipleRadio(
                                  onSelect: (val) {},
                                  heading: "Can the user view patients?",
                                  opt1: "Yes",
                                  opt2: "No",
                                  onlyTwo: true,
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputMultipleRadio(
                                  onSelect: (val) {},
                                  heading: "Can the user access payments?",
                                  opt1: "Yes",
                                  opt2: "No",
                                  onlyTwo: true,
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputMultipleRadio(
                                  onSelect: (val) {},
                                  heading: "Can the user access visual acuity?",
                                  opt1: "Yes",
                                  opt2: "No",
                                  onlyTwo: true,
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputMultipleRadio(
                                  onSelect: (val) {},
                                  heading:
                                      "Can the user access doctor consultation?",
                                  opt1: "Yes",
                                  opt2: "No",
                                  onlyTwo: true,
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputMultipleRadio(
                                  onSelect: (val) {},
                                  heading: "Can the user access pharmacy?",
                                  opt1: "Yes",
                                  opt2: "No",
                                  onlyTwo: true,
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputMultipleRadio(
                                  onSelect: (val) {},
                                  heading: "Can the user access laboratory?",
                                  opt1: "Yes",
                                  opt2: "No",
                                  onlyTwo: true,
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputMultipleRadio(
                                  onSelect: (val) {},
                                  heading: "Can the user access ward?",
                                  opt1: "Yes",
                                  opt2: "No",
                                  onlyTwo: true,
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputMultipleRadio(
                                  onSelect: (val) {},
                                  heading: "Can the user access theater?",
                                  opt1: "Yes",
                                  opt2: "No",
                                  onlyTwo: true,
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputMultipleRadio(
                                  onSelect: (val) {},
                                  heading:
                                      "Can the user access reports & statistics?",
                                  opt1: "Yes",
                                  opt2: "No",
                                  onlyTwo: true,
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputMultipleRadio(
                                  onSelect: (val) {},
                                  heading: "Can the user manage user roles?",
                                  opt1: "Yes",
                                  opt2: "No",
                                  onlyTwo: true,
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputMultipleRadio(
                                  onSelect: (val) {},
                                  heading: "Can the user manage users?",
                                  opt1: "Yes",
                                  opt2: "No",
                                  onlyTwo: true,
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputMultipleRadio(
                                  onSelect: (val) {},
                                  heading:
                                      "Can the user access system & configurations?",
                                  opt1: "Yes",
                                  opt2: "No",
                                  onlyTwo: true,
                                ),
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
                                          ? 140
                                          : 140,
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
                                          value: "Add User Role",
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
