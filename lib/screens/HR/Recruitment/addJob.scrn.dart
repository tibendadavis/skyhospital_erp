import 'package:flutter/material.dart';

import 'package:skyhospital_erp/components/heading2.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/inputBigText.comp.dart';
import 'package:skyhospital_erp/components/inputDate.comp.dart';
import 'package:skyhospital_erp/components/inputOptions.comp.dart';
import 'package:skyhospital_erp/components/inputTextField.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/addJobCategory.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/addJobExprnc.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/addJobInterviewRounds.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/addJobSkills.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/addJobSubCategory.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/addJobType.scrn.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class addJob extends StatefulWidget {
  const addJob({super.key});

  @override
  State<addJob> createState() => _addJobState();
}

class _addJobState extends State<addJob> with SingleTickerProviderStateMixin {
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
                          value: "JOB",
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        const Heading3(
                          value: "Job Information",
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
                                    value: "Job Details",
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
                                    title: "Job Title",
                                    value: null,
                                    hintText: "Job Title"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(
                                    title: "Job Category", opt1: "Developer"),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (_) =>
                                                    addJobCategory());
                                          },
                                          child: Heading5(
                                            value: "Add",
                                          ))
                                    ]),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(
                                    title: "Job Sub Category",
                                    opt1: "Lavarel Developer"),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (_) =>
                                                    addJobSubCategory());
                                          },
                                          child: Heading5(
                                            value: "Add",
                                          ))
                                    ]),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(title: "Department", opt1: ""),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(title: "Skills", opt1: "Skills"),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (_) => addJobSkill());
                                          },
                                          child: Heading5(
                                            value: "Add",
                                          ))
                                    ]),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(title: "Location", opt1: ""),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(
                                  title: "Interview Rounds",
                                  opt1: "HR round",
                                  opt2: "Technical round",
                                  opt3: "Manager round",
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (_) =>
                                                    addJobInterviewRound());
                                          },
                                          child: Heading5(
                                            value: "Add",
                                          ))
                                    ]),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputDate(
                                    heading: "Start Date",
                                    subheading: "Start Date"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputDate(
                                    heading: "End Date",
                                    subheading: "End Date"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputTextField(
                                    title: "Total Openings", hintText: "0"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(
                                  title: "Status",
                                  opt1: "Open",
                                  opt2: "Closed",
                                  value: "Open",
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
                                inputOptions(
                                  title: "Recruiter",
                                  opt1: "",
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(
                                  title: "Job Type",
                                  opt1: "Full Time",
                                  opt2: "Part time",
                                  opt3: "On Contract",
                                  opt4: "Internship",
                                  opt5: "Trainee",
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (_) => addJobType());
                                          },
                                          child: Heading5(
                                            value: "Add",
                                          ))
                                    ]),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(
                                  title: "Work Experience",
                                  opt1: "Fresher",
                                  opt2: "0-1 year",
                                  opt3: "1-3 years",
                                  opt4: "3-5 years",
                                  opt5: "5+ years",
                                ),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (_) => addJobExprnc());
                                          },
                                          child: Heading5(
                                            value: "Add",
                                          ))
                                    ]),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputOptions(
                                  title: "Remote Job",
                                  opt1: "Yes",
                                  opt2: "No",
                                ),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                inputBigText(
                                    title: "Job Description",
                                    hintText: "Job Description"),
                                SizedBox(
                                  height:
                                      Responsive.isDesktop(context) ? 10 : 15,
                                ),
                                Flex(
                                  direction: Responsive.isDesktop(context)
                                      ? Axis.horizontal
                                      : Axis.vertical,
                                  mainAxisAlignment:
                                      Responsive.isDesktop(context)
                                          ? MainAxisAlignment.spaceBetween
                                          : MainAxisAlignment.start,
                                  crossAxisAlignment:
                                      Responsive.isDesktop(context)
                                          ? CrossAxisAlignment.start
                                          : CrossAxisAlignment.start,
                                  children: [
                                    HeadingText(
                                        size: Responsive.isDesktop(context)
                                            ? 18
                                            : 14,
                                        value: "Required Fields"),
                                    Flex(
                                      direction: Responsive.isDesktop(context)
                                          ? Axis.horizontal
                                          : Axis.vertical,
                                      mainAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? MainAxisAlignment.spaceBetween
                                              : MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          Responsive.isDesktop(context)
                                              ? CrossAxisAlignment.start
                                              : CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Radio(
                                              value: false,
                                              onChanged: (value) {
                                                setState(() {
                                                  value = true;
                                                });
                                              },
                                              groupValue: null,
                                            ),
                                            Heading5(value: "Photo"),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Radio(
                                              value: false,
                                              onChanged: (value) {},
                                              groupValue: null,
                                            ),
                                            Heading5(value: "Resume"),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Radio(
                                              value: false,
                                              onChanged: (value) {},
                                              groupValue: null,
                                            ),
                                            Heading5(value: "Date Of Birth"),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Radio(
                                              value: false,
                                              onChanged: (value) {},
                                              groupValue: null,
                                            ),
                                            Heading5(value: "Gender"),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
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
