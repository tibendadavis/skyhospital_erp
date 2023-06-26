import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading2.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/inputBigText.comp.dart';
import 'package:skyhospital_erp/components/inputDate.comp.dart';
import 'package:skyhospital_erp/components/inputDatePeriod.comp.dart';
import 'package:skyhospital_erp/components/inputFile.comp.dart';
import 'package:skyhospital_erp/components/inputGender.comp.dart';
import 'package:skyhospital_erp/components/inputMultpleRadio.comp.dart';
import 'package:skyhospital_erp/components/inputOptions.comp.dart';
import 'package:skyhospital_erp/components/inputTextField.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class addEmployee extends StatefulWidget {
  const addEmployee({super.key});

  @override
  State<addEmployee> createState() => _addEmployeeState();
}

class _addEmployeeState extends State<addEmployee>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

  bool conctactinfo = false;

  bool demographics = true;

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
                          value: "EMPLOYEE",
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Heading3(
                          value: "Employee Information",
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
                              width: Responsive.isDesktop(context) ? 220 : 130,
                              height: Responsive.isDesktop(context) ? 50 : 40,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: !demographics
                                          ? Colors.white
                                          : Palette().primaryColor,
                                      side: BorderSide(
                                        width: 1,
                                        color: !demographics
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
                                    value: "Account Details",
                                    color: !demographics
                                        ? Colors.black
                                        : Colors.white,
                                  )),
                            ),
                            SizedBox(
                              width: Responsive.isDesktop(context) ? 10 : 10,
                              height: Responsive.isDesktop(context) ? 0 : 10,
                            ),
                            SizedBox(
                              width: Responsive.isDesktop(context) ? 220 : 130,
                              height: Responsive.isDesktop(context) ? 50 : 40,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      elevation: 0,
                                      backgroundColor: !conctactinfo
                                          ? Colors.white
                                          : Palette().primaryColor,
                                      side: BorderSide(
                                        width: 1,
                                        color: !conctactinfo
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
                                        Responsive.isDesktop(context) ? 14 : 11,
                                    value: "Other Details",
                                    color: !conctactinfo
                                        ? Colors.black
                                        : Colors.white,
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
                          visible: demographics,
                          maintainState: true,
                          child: Container(
                            width: !Responsive.isDesktop(context)
                                ? MediaQuery.of(context).size.width
                                : MediaQuery.of(context).size.width / 1.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                inputTextField(
                                    title: "Employee ID",
                                    value: null,
                                    hintText: "Employee ID"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputTextField(
                                    title: "Employee Name",
                                    value: null,
                                    hintText: "Employee Name"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputTextField(
                                    title: "Employee Email",
                                    value: null,
                                    hintText: "Employee Email"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputTextField(
                                    title: "Password",
                                    hide: true,
                                    value: null,
                                    hintText: "Password"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputDate(
                                    heading: "Date of Birth",
                                    value: null,
                                    subheading: "Date of Birth"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(title: "Designation", opt1: ""),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(title: "Department", opt1: ""),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputGender(onSelect: (val) {}),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputTextField(
                                    title: "Mobile",
                                    type: "xxx",
                                    hintText: "eg.12345678890"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputDate(
                                    heading: "Joining Date",
                                    value: null,
                                    subheading: "Joining Date"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(
                                  title: "Reporting To",
                                  opt1: "",
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(
                                  title: "User Role",
                                  opt1: "",
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputBigText(
                                    title: "Address",
                                    hintText:
                                        "eg. 123, My Street, Kingston, Dar Es Salaam 12401"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputFile(heading: "Profile Picture"),
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
                                          ? 70
                                          : 70,
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
                                          setState(() {
                                            demographics = false;
                                            conctactinfo = true;
                                          });
                                        },
                                        child: Center(
                                            child: HeadingText(
                                          size: Responsive.isDesktop(context)
                                              ? 14
                                              : 14,
                                          value: "Next",
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Visibility(
                          visible: conctactinfo,
                          maintainState: true,
                          child: Container(
                            width: !Responsive.isDesktop(context)
                                ? MediaQuery.of(context).size.width
                                : MediaQuery.of(context).size.width / 1.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                inputMultipleRadio(
                                  onSelect: (val) {},
                                  heading: "Login Allowed",
                                  onlyTwo: true,
                                  opt1: "Yes",
                                  opt2: "No",
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputMultipleRadio(
                                  onSelect: (val) {},
                                  heading: "Receive email notifications?",
                                  onlyTwo: true,
                                  opt1: "Yes",
                                  opt2: "No",
                                ),
                                inputTextField(
                                    title: "Skills",
                                    value: null,
                                    hintText: "e.g communication, ReactJS"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputDate(
                                    heading: "Probation End Date",
                                    subheading: "Date"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputDatePeriod(
                                  heading: 'Notice Period',
                                  subheading1: 'Start Date',
                                  subheading2: 'End Date',
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(
                                  title: "Employment Type",
                                  opt1: "",
                                  value: null,
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(
                                  title: "Marital Status",
                                  opt1: "Not married",
                                  opt2: "Married",
                                  value: "Not married",
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
                                          ? 90
                                          : 90,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.only(
                                              left: Insets().appPadding / 2,
                                              right: Insets().appPadding / 2,
                                            ),
                                            backgroundColor: Colors.white,
                                            elevation: 0,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(
                                                    width: 1,
                                                    color:
                                                        Colors.grey.shade700),
                                                borderRadius:
                                                    BorderRadius.circular(10))),
                                        onPressed: () {
                                          setState(() {
                                            demographics = true;
                                            conctactinfo = false;
                                          });
                                        },
                                        child: Center(
                                            child: HeadingText(
                                          size: Responsive.isDesktop(context)
                                              ? 14
                                              : 14,
                                          value: "Previous",
                                          color: Colors.black,
                                        )),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    SizedBox(
                                      height: Responsive.isDesktop(context)
                                          ? 40
                                          : 40,
                                      width: Responsive.isDesktop(context)
                                          ? 70
                                          : 70,
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
                                              ? 14
                                              : 14,
                                          value: "Save",
                                        )),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
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
