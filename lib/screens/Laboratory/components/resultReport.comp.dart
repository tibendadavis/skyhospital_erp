import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading4.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/controllers/funcs_main.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class resultReport extends StatefulWidget {
  const resultReport({super.key});

  @override
  State<resultReport> createState() => _resultReportState();
}

class _resultReportState extends State<resultReport>
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
            margin: EdgeInsets.symmetric(vertical: 35),
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0))),
            child: SingleChildScrollView(
                child: SizedBox(
              width: Responsive.isDesktop(context) ? 1000 : size.width - 20,
              child: Expanded(
                  child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(
                        top: Insets().appPadding / 2,
                        left: Insets().appPadding * 2,
                        right: Insets().appGap),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Spacer(),
                            Row(
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 0),
                                        backgroundColor: Colors.transparent,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                Insets().appPadding / 5))),
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.search,
                                      color: Palette().primaryColor,
                                      size: 22,
                                    )),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 0),
                                        backgroundColor: Colors.transparent,
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                Insets().appPadding / 5))),
                                    onPressed: () {},
                                    child: Icon(
                                      Icons.print,
                                      color: Colors.blueAccent,
                                      size: 22,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      height: size.height - 140,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      margin: EdgeInsets.only(
                          top: 0,
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey.shade800,
                            width: 2,
                          ),
                          color: Palette().primaryColorLight,
                          borderRadius: BorderRadius.circular(0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Spacer(),
                          Heading4(
                            value: "Laboratory Report (Finalized)",
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(
                                top: Insets().appPadding / 2,
                                left: Insets().appPadding,
                                right: Insets().appPadding,
                                bottom: Insets().appPadding),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade800,
                                  width: 2,
                                ),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(0)),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: 400,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Heading5(
                                                value: "Lab Number",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              Heading5(
                                                value: "127",
                                                color: Colors.grey.shade800,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Heading5(
                                                value: "Patient Name",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              Heading5(
                                                value: "John Snow",
                                                color: Colors.grey.shade800,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Heading5(
                                                value: "Age / Sex",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              Heading5(
                                                value: "23 / Male",
                                                color: Colors.grey.shade800,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Heading5(
                                                value: "Ordered By",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              Heading5(
                                                value: " ",
                                                color: Colors.grey.shade800,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Heading5(
                                                value: "Address",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              Heading5(
                                                value: "190, Dar es salaam",
                                                color: Colors.grey.shade800,
                                              )
                                            ],
                                          )
                                        ]),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    width: 400,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Heading5(
                                                value: "Reg Number",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              Heading5(
                                                value: "107",
                                                color: Colors.grey.shade800,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Heading5(
                                                value: "Visit Number",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              Heading5(
                                                value: "127",
                                                color: Colors.grey.shade800,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Heading5(
                                                value: "Collected",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              Heading5(
                                                value: " ",
                                                color: Colors.grey.shade800,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Heading5(
                                                value: "Resulted",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              Heading5(
                                                value: " ",
                                                color: Colors.grey.shade800,
                                              )
                                            ],
                                          ),
                                          SizedBox(
                                            height: 7,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Heading5(
                                                value: "Date of Printing",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              Heading5(
                                                value: Funcs().getDateString(
                                                    date: DateTime.now()),
                                                color: Colors.grey.shade800,
                                              )
                                            ],
                                          )
                                        ]),
                                  ),
                                ]),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Heading4(
                            value: "Clinical Chemistry",
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.w700,
                          ),
                          Center(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: DataTable(
                                  dataRowHeight: 35,
                                  headingRowHeight: 35,
                                  headingTextStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  horizontalMargin: 0,
                                  columnSpacing:
                                      Responsive.isDesktop(context) &&
                                              size.width < 1600
                                          ? size.width / 30
                                          : Responsive.isDesktop(context) &&
                                                  size.width > 1600
                                              ? size.width / 64
                                              : 20,
                                  showCheckboxColumn: false,
                                  checkboxHorizontalMargin: 10,
                                  showBottomBorder: true,
                                  columns: [
                                    DataColumn(
                                        label: HeadingText(
                                      size: 14,
                                      value: "Test Name",
                                      fontWeight: FontWeight.w700,
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Result",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Unit",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Reference Range",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Interpretation",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Impression",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                  ],
                                  rows: [
                                    DataRow(cells: [
                                      DataCell(HeadingText(
                                        size: 13,
                                        value: "LIPID PROFILE",
                                        fontWeight: FontWeight.w700,
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: " ",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: " ",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: " ",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: " ",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: " ",
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(HeadingText(
                                        size: 13,
                                        value: "TOTAL SERUM CHOLESTROL",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: "0011+",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: "mmol/l",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: "0.0-1.10",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: " ",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: " ",
                                      )),
                                    ]),
                                  ]),
                            ),
                          ),
                          // Spacer(),
                          Container(
                            width: size.width,
                            height: 2,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Palette().primaryColor,
                                      Colors.grey.shade500
                                    ],
                                    stops: [0.4, 0.9],
                                    tileMode: TileMode.clamp),
                                color: Palette().primaryColor,
                                borderRadius:
                                    BorderRadius.circular(Insets().appPadding)),
                            margin: EdgeInsets.only(
                                left: Insets().appPadding,
                                right: Insets().appPadding,
                                top: 10,
                                bottom: 10),
                          ),
                          Heading5(
                            value: "* * * End of Report * * *",
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold,
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Heading5(
                                    value: "_________________",
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Heading5(
                                    value: "Lab Technician",
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Heading5(
                                    value: "_________________",
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Heading5(
                                    value: "Doctor",
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ))
                ],
              )),
            )),
          ),
        ),
      ),
    );
  }
}
