import 'package:flutter/material.dart';

import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading4.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/inputDate.comp.dart';
import 'package:skyhospital_erp/components/inputOptions.comp.dart';
import 'package:skyhospital_erp/controllers/funcs_main.dart';

import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class bedTasks extends StatefulWidget {
  const bedTasks({super.key});

  @override
  State<bedTasks> createState() => bedTasksState();
}

class bedTasksState extends State<bedTasks>
    with SingleTickerProviderStateMixin {
  bool _bedTransfer = false;
  late AnimationController controller;
  late Animation<double> scaleAnimation;
  bool _discharge = false;

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
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: SingleChildScrollView(
                child: SizedBox(
              width: Responsive.isDesktop(context)
                  ? size.width - 418
                  : size.width - 20,
              height: 600,
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Heading3(
                              value: "Bed Tasks",
                              fontWeight: FontWeight.w700,
                              color: Colors.grey.shade800,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Heading4(
                                      value: "John Snow 23/M ",
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey.shade900,
                                    ),
                                    Heading4(
                                      value: "MM01",
                                      fontWeight: FontWeight.w600,
                                      color: Colors.green.shade600,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: size.width,
                    height: 3,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Palette().primaryColor,
                              Palette().primaryColorLight
                            ],
                            stops: [0.2, 0.5],
                            tileMode: TileMode.clamp),
                        color: Palette().primaryColor,
                        borderRadius:
                            BorderRadius.circular(Insets().appPadding)),
                    margin: EdgeInsets.only(
                        left: Insets().appPadding,
                        right: Insets().appPadding,
                        top: 10),
                  ),
                  Container(
                    child: Expanded(
                        flex: 1,
                        child: ListView(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                top: Insets().appPadding / 2,
                                left: Insets().appPadding,
                                right: Insets().appPadding,
                              ),
                              padding: EdgeInsets.only(
                                  left: Insets().appPadding,
                                  right: Insets().appPadding,
                                  top: Insets().appGap + 2,
                                  bottom: Insets().appPadding),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 2, color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadiusMin + 4)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading4(
                                          value: "Bed Transfer To",
                                          color: Colors.grey.shade700,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        if (_bedTransfer)
                                          Row(
                                            children: [
                                              TextButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      _bedTransfer = false;
                                                    });
                                                  },
                                                  child: Heading5(
                                                    value: "Cancel",
                                                    color: Colors.red,
                                                  )),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10,
                                                              vertical: 10),
                                                      backgroundColor: Palette()
                                                          .primaryColor,
                                                      elevation: 0,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(Insets()
                                                                      .appPadding /
                                                                  5))),
                                                  onPressed: () {},
                                                  child: Heading5(
                                                    value: "Save",
                                                  )),
                                            ],
                                          )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Visibility(
                                      visible: !_bedTransfer,
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            _bedTransfer = true;
                                          });
                                        },
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.settings,
                                              color: Palette().primaryColor,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Heading5(
                                                value: "Bed Transfer",
                                                fontWeight: FontWeight.bold,
                                                color: Palette().primaryColor),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      visible: _bedTransfer,
                                      child: Column(
                                        children: [
                                          Flex(
                                              direction:
                                                  Responsive.isDesktop(context)
                                                      ? Axis.horizontal
                                                      : Axis.vertical,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: Responsive.isDesktop(
                                                          context)
                                                      ? 512
                                                      : size.width,
                                                  child: Column(children: [
                                                    inputDate(
                                                      heading: "Transfer Date",
                                                      subheading: "",
                                                      value: Funcs()
                                                          .getDateString(
                                                              date: DateTime
                                                                  .now()),
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    inputOptions(
                                                      title: "Ward",
                                                      opt1: "",
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    inputOptions(
                                                      title: "Bed Category",
                                                      opt1: "",
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                  ]),
                                                ),
                                                SizedBox(
                                                  width: Responsive.isDesktop(
                                                          context)
                                                      ? 10
                                                      : 0,
                                                ),
                                                SizedBox(
                                                  width: Responsive.isDesktop(
                                                          context)
                                                      ? 512
                                                      : size.width,
                                                  child: Column(children: [
                                                    inputOptions(
                                                      title: "Floor",
                                                      opt1: "",
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    inputOptions(
                                                      title: "Bed No.",
                                                      opt1: "",
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    inputOptions(
                                                      title:
                                                          "Billing\nCategory",
                                                      opt1: "",
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                  ]),
                                                )
                                              ]),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        )),
                  ),
                  Container(
                    child: Expanded(
                        flex: 1,
                        child: ListView(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: Insets().appPadding,
                                  right: Insets().appPadding,
                                  bottom: Insets().appPadding),
                              padding: EdgeInsets.only(
                                  left: Insets().appPadding,
                                  right: Insets().appPadding,
                                  top: Insets().appGap + 2,
                                  bottom: Insets().appPadding),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                      width: 2, color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadiusMin + 4)),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading4(
                                          value: "Discharge Patient",
                                          color: Colors.grey.shade700,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        if (_discharge)
                                          Row(
                                            children: [
                                              TextButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      _discharge = false;
                                                    });
                                                  },
                                                  child: Heading5(
                                                    value: "Cancel",
                                                    color: Colors.red,
                                                  )),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10,
                                                              vertical: 10),
                                                      backgroundColor: Palette()
                                                          .primaryColor,
                                                      elevation: 0,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius
                                                              .circular(Insets()
                                                                      .appPadding /
                                                                  5))),
                                                  onPressed: () {},
                                                  child: Heading5(
                                                    value: "Discharge",
                                                  )),
                                            ],
                                          )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Visibility(
                                      visible: !_discharge,
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            _discharge = true;
                                          });
                                        },
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.settings,
                                              color: Palette().primaryColor,
                                              size: 20,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Heading5(
                                                value: "Discharge Patient",
                                                fontWeight: FontWeight.bold,
                                                color: Palette().primaryColor),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Visibility(
                                      visible: _discharge,
                                      child: Column(
                                        children: [
                                          Flex(
                                              direction:
                                                  Responsive.isDesktop(context)
                                                      ? Axis.horizontal
                                                      : Axis.vertical,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: Responsive.isDesktop(
                                                          context)
                                                      ? 512
                                                      : size.width,
                                                  child: Column(children: [
                                                    inputDate(
                                                      heading:
                                                          "Admission\nDate",
                                                      subheading: "",
                                                      value: Funcs()
                                                          .getDateString(
                                                              date: DateTime
                                                                  .now()),
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    inputOptions(
                                                      title: "Ward",
                                                      opt1: "",
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    inputOptions(
                                                      title: "Bed Category",
                                                      opt1: "",
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                  ]),
                                                ),
                                                SizedBox(
                                                  width: Responsive.isDesktop(
                                                          context)
                                                      ? 10
                                                      : 0,
                                                ),
                                                SizedBox(
                                                  width: Responsive.isDesktop(
                                                          context)
                                                      ? 512
                                                      : size.width,
                                                  child: Column(children: [
                                                    inputOptions(
                                                      title: "Floor",
                                                      opt1: "",
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    inputOptions(
                                                      title: "Bed No.",
                                                      opt1: "",
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                    inputOptions(
                                                      title:
                                                          "Billing\nCategory",
                                                      opt1: "",
                                                    ),
                                                    SizedBox(
                                                      height: 5,
                                                    ),
                                                  ]),
                                                )
                                              ]),
                                        ],
                                      ),
                                    ),
                                  ]),
                            ),
                          ],
                        )),
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
