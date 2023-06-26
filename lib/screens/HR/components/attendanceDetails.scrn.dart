import 'package:flutter/material.dart';

import 'package:skyhospital_erp/components/heading2.dart';
import 'package:skyhospital_erp/components/heading4.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading6.dart';

import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/HR/addAttendance.scrn.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

// ignore: must_be_immutable
class attendanceDetails extends StatefulWidget {
  DateTime? date;
  attendanceDetails({super.key, this.date});

  @override
  State<attendanceDetails> createState() => _attendanceDetailsState();
}

class _attendanceDetailsState extends State<attendanceDetails>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> scaleAnimation;

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
            margin: EdgeInsets.only(bottom: 50, top: 50),
            decoration: ShapeDecoration(
                color: Palette().primaryColorLight,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: SingleChildScrollView(
                child: SizedBox(
              width: Responsive.isDesktop(context)
                  ? size.width / 1.4
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
                          value: "Attendance Details",
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
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
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.circular(Insets().appRadius - 10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(radius: Insets().appRadiusMid + 10),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            HeadingText(
                              size: 15,
                              value: "Kwilasa, Minda Busobe",
                              fontWeight: FontWeight.w600,
                            ),
                            HeadingText(
                              size: 15,
                              value: "Senior",
                              color: Colors.grey.shade700,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  if (Responsive.isDesktop(context))
                    SizedBox(
                      width: size.width,
                      child: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                                height: 400,
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
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadius - 10)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Heading4(
                                        value:
                                            "Date: ${widget.date!.year} - ${widget.date!.month} - ${widget.date!.day}"),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      width: size.width,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Palette()
                                                  .primaryColor
                                                  .withOpacity(0.3)),
                                          borderRadius: BorderRadius.circular(
                                              Insets().appRadius - 10)),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Heading4(
                                              value: "Clock In",
                                              fontWeight: FontWeight.w300,
                                            ),
                                            Heading4(
                                              value: "05:48 pm",
                                            )
                                          ]),
                                    ),
                                    Spacer(),
                                    Container(
                                      width: size.width,
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 60),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1.6,
                                            color: Palette().primaryColor),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Heading4(
                                        value: "23h 28m",
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      width: size.width,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Palette()
                                                  .primaryColor
                                                  .withOpacity(0.3)),
                                          borderRadius: BorderRadius.circular(
                                              Insets().appRadius - 10)),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Heading4(
                                              value: "Clock Out",
                                              fontWeight: FontWeight.w300,
                                            ),
                                            Heading4(
                                              value: "06:00 pm",
                                            )
                                          ]),
                                    )
                                  ],
                                )),
                          ),
                          Expanded(
                            child: Container(
                              height: 400,
                              padding: EdgeInsets.only(
                                  top: Insets().appPadding,
                                  bottom: Insets().appPadding,
                                  left: Insets().appPadding,
                                  right: Insets().appPadding),
                              margin: EdgeInsets.only(
                                  top: 0,
                                  right: Insets().appPadding,
                                  bottom: Insets().appPadding),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadius - 10)),
                              child: ListView(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Heading4(value: "Activity"),
                                              ElevatedButton(
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (_) =>
                                                          addAttendance());
                                                },
                                                child: Heading5(
                                                    value: "Add",
                                                    color: Colors.white),
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 0),
                                            decoration: BoxDecoration(
                                              border: Border(
                                                  left: BorderSide(
                                                      color: Palette()
                                                          .primaryColor,
                                                      width: 1.5)),
                                            ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.circle,
                                                      color: Palette()
                                                          .primaryColor,
                                                      size: 10,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Heading6(
                                                            value: "Clock In",
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                          Row(
                                                            children: [
                                                              Heading6(
                                                                value:
                                                                    "21-03-2023, 05:48 pm",
                                                                color: Colors
                                                                    .grey
                                                                    .shade700,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .location_pin,
                                                                color: Palette()
                                                                    .primaryColor,
                                                                size: 20,
                                                              ),
                                                              Heading6(
                                                                value:
                                                                    "Dar,Tanzania",
                                                                color: Colors
                                                                    .grey
                                                                    .shade700,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ],
                                                          )
                                                        ]),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.circle,
                                                      color: Palette()
                                                          .primaryColor,
                                                      size: 10,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Heading6(
                                                            value: "Clock Out",
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                          Row(
                                                            children: [
                                                              Heading6(
                                                                value:
                                                                    "21-03-2023, 01:34 pm",
                                                                color: Colors
                                                                    .grey
                                                                    .shade700,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ],
                                                          )
                                                        ]),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 0),
                                            decoration: BoxDecoration(
                                              border: Border(
                                                  left: BorderSide(
                                                      color: Palette()
                                                          .primaryColor,
                                                      width: 1.5)),
                                            ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.circle,
                                                      color: Palette()
                                                          .primaryColor,
                                                      size: 10,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Heading6(
                                                            value: "Clock In",
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                          Row(
                                                            children: [
                                                              Heading6(
                                                                value:
                                                                    "21-03-2023, 05:48 pm",
                                                                color: Colors
                                                                    .grey
                                                                    .shade700,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                              SizedBox(
                                                                width: 10,
                                                              ),
                                                              Icon(
                                                                Icons
                                                                    .location_pin,
                                                                color: Palette()
                                                                    .primaryColor,
                                                                size: 20,
                                                              ),
                                                              Heading6(
                                                                value:
                                                                    "Dar,Tanzania",
                                                                color: Colors
                                                                    .grey
                                                                    .shade700,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ],
                                                          )
                                                        ]),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 20,
                                                ),
                                                Row(
                                                  children: [
                                                    Icon(
                                                      Icons.circle,
                                                      color: Palette()
                                                          .primaryColor,
                                                      size: 10,
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Heading6(
                                                            value: "Clock Out",
                                                            fontWeight:
                                                                FontWeight.w400,
                                                          ),
                                                          Row(
                                                            children: [
                                                              Heading6(
                                                                value:
                                                                    "21-03-2023, 01:34 pm",
                                                                color: Colors
                                                                    .grey
                                                                    .shade700,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                              ),
                                                            ],
                                                          )
                                                        ]),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (!Responsive.isDesktop(context))
                    SizedBox(
                      width: size.width,
                      child: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: size.width,
                              height: 400,
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
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      Insets().appRadius - 10)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Heading4(
                                      value:
                                          "Date: ${widget.date!.year} - ${widget.date!.month} - ${widget.date!.day}"),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: size.width,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Palette()
                                                .primaryColor
                                                .withOpacity(0.3)),
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadius - 10)),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Heading4(
                                            value: "Clock In",
                                            fontWeight: FontWeight.w300,
                                          ),
                                          Heading4(
                                            value: "05:48 pm",
                                          )
                                        ]),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: size.width,
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 0, vertical: 60),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1.6,
                                          color: Palette().primaryColor),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Heading4(
                                      value: "23h 28m",
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    width: size.width,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Palette()
                                                .primaryColor
                                                .withOpacity(0.3)),
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadius - 10)),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Heading4(
                                            value: "Clock Out",
                                            fontWeight: FontWeight.w300,
                                          ),
                                          Heading4(
                                            value: "06:00 pm",
                                          )
                                        ]),
                                  )
                                ],
                              )),
                          Container(
                            width: size.width,
                            height: 400,
                            padding: EdgeInsets.only(
                                top: Insets().appPadding,
                                bottom: Insets().appPadding,
                                left: Insets().appPadding,
                                right: Insets().appPadding),
                            margin: EdgeInsets.only(
                                top: 0,
                                right: Insets().appPadding,
                                bottom: Insets().appPadding),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                    Insets().appRadius - 10)),
                            child: ListView(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Heading4(value: "Activity"),
                                            ElevatedButton(
                                              onPressed: () {
                                                showDialog(
                                                    context: context,
                                                    builder: (_) =>
                                                        addAttendance());
                                              },
                                              child: Heading5(
                                                  value: "Add",
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 0),
                                          decoration: BoxDecoration(
                                            border: Border(
                                                left: BorderSide(
                                                    color:
                                                        Palette().primaryColor,
                                                    width: 1.5)),
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.circle,
                                                    color:
                                                        Palette().primaryColor,
                                                    size: 10,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Heading6(
                                                          value: "Clock In",
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Heading6(
                                                              value:
                                                                  "21-03-2023, 05:48 pm",
                                                              color: Colors.grey
                                                                  .shade700,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .location_pin,
                                                              color: Palette()
                                                                  .primaryColor,
                                                              size: 20,
                                                            ),
                                                            Heading6(
                                                              value:
                                                                  "Dar,Tanzania",
                                                              color: Colors.grey
                                                                  .shade700,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ],
                                                        )
                                                      ]),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.circle,
                                                    color:
                                                        Palette().primaryColor,
                                                    size: 10,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Heading6(
                                                          value: "Clock Out",
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Heading6(
                                                              value:
                                                                  "21-03-2023, 01:34 pm",
                                                              color: Colors.grey
                                                                  .shade700,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ],
                                                        )
                                                      ]),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 0),
                                          decoration: BoxDecoration(
                                            border: Border(
                                                left: BorderSide(
                                                    color:
                                                        Palette().primaryColor,
                                                    width: 1.5)),
                                          ),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.circle,
                                                    color:
                                                        Palette().primaryColor,
                                                    size: 10,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Heading6(
                                                          value: "Clock In",
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Heading6(
                                                              value:
                                                                  "21-03-2023, 05:48 pm",
                                                              color: Colors.grey
                                                                  .shade700,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            Icon(
                                                              Icons
                                                                  .location_pin,
                                                              color: Palette()
                                                                  .primaryColor,
                                                              size: 20,
                                                            ),
                                                            Heading6(
                                                              value:
                                                                  "Dar,Tanzania",
                                                              color: Colors.grey
                                                                  .shade700,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ],
                                                        )
                                                      ]),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.circle,
                                                    color:
                                                        Palette().primaryColor,
                                                    size: 10,
                                                  ),
                                                  SizedBox(
                                                    width: 10,
                                                  ),
                                                  Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Heading6(
                                                          value: "Clock Out",
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Heading6(
                                                              value:
                                                                  "21-03-2023, 01:34 pm",
                                                              color: Colors.grey
                                                                  .shade700,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                            ),
                                                          ],
                                                        )
                                                      ]),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
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
