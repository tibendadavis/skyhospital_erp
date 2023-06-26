import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading4.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/controllers/funcs_main.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class invoiceReport extends StatefulWidget {
  const invoiceReport({super.key});

  @override
  State<invoiceReport> createState() => _invoiceReportState();
}

class _invoiceReportState extends State<invoiceReport>
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
                color: Palette().primaryColorLight,
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
                                      Icons.download_rounded,
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
                      height: size.height + 100,
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
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/img/skylogo2.png",
                                    width: 70,
                                    height: 70,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Heading3(
                                        value:
                                            "GAUTENG PROVINCE HEALTH REPUBLIC OF SOUTH AFRICA",
                                        color: Colors.grey.shade900,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      Heading5(value: "P.O.BOX 23, PEKI, V/R"),
                                      Heading5(value: "E-mail: "),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Heading4(
                                value: "Invoice",
                                fontWeight: FontWeight.bold,
                              )
                            ],
                          ),
                          Container(
                            width: double.infinity,
                            margin: EdgeInsets.only(
                                top: Insets().appPadding / 2,
                                left: Insets().appPadding / 2,
                                right: Insets().appPadding / 2,
                                bottom: Insets().appPadding / 2),
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade400,
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
                                                value: "Reg No.",
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
                                                value: "Mobile",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              Heading5(
                                                value: "1234567890",
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
                                                value: "190, Dar es salaam ",
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
                                                value: "Patient Type",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              Heading5(
                                                value: "PRIVATE CASH",
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
                                                value: "Bill No.",
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
                                                value: "Bill Date",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              Heading5(
                                                value: Funcs().getDateString(
                                                    date: DateTime.now()),
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
                                                value: "Visit No.",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              Heading5(
                                                value: "161",
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
                                                value: "Visit time",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              Heading5(
                                                value: "13/07/2023 10:36 AM",
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
                                                value: "Lab No.",
                                                fontWeight: FontWeight.bold,
                                              ),
                                              Heading5(
                                                value: "",
                                                color: Colors.grey.shade800,
                                              )
                                            ],
                                          )
                                        ]),
                                  ),
                                ]),
                          ),

                          Center(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: DataTable(
                                  dataRowHeight: 20,
                                  headingRowHeight: 30,
                                  headingTextStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  horizontalMargin: 0,
                                  columnSpacing:
                                      Responsive.isDesktop(context) &&
                                              size.width < 1600
                                          ? size.width / 16
                                          : Responsive.isDesktop(context) &&
                                                  size.width > 1600
                                              ? size.width / 20
                                              : 20,
                                  showCheckboxColumn: false,
                                  checkboxHorizontalMargin: 10,
                                  showBottomBorder: true,
                                  columns: [
                                    DataColumn(
                                        label: HeadingText(
                                      size: 14,
                                      value: "SN",
                                      fontWeight: FontWeight.w700,
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Description",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Rate",
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
                                        value: "Discount",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Amount",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                  ],
                                  rows: [
                                    DataRow(cells: [
                                      DataCell(HeadingText(
                                        size: 13,
                                        value: "CONSUMABLE",
                                        fontWeight: FontWeight.w800,
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
                                        value: "1",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: "CONSULTATION",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: "7.00",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: "1.00",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: "0.00",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: "7.00",
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(HeadingText(
                                        size: 13,
                                        value: "FOLDER CHARGES",
                                        fontWeight: FontWeight.w800,
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
                                        value: "2",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: "FOLDER CHARGES",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: "7.00",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: "1.00",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: "0.00",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: "7.00",
                                      )),
                                    ]),
                                    DataRow(cells: [
                                      DataCell(HeadingText(
                                        size: 13,
                                        value: " ",
                                        fontWeight: FontWeight.w800,
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
                                        size: 15,
                                        value: "0.00",
                                        fontWeight: FontWeight.bold,
                                      )),
                                      DataCell(HeadingText(
                                        size: 15,
                                        value: "14.00",
                                        fontWeight: FontWeight.bold,
                                      )),
                                    ]),
                                  ]),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: 230,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Total Amount",
                                          fontWeight: FontWeight.bold,
                                        ),
                                        Heading5(value: "14.00")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Patient Amount",
                                          fontWeight: FontWeight.bold,
                                        ),
                                        Heading5(value: "14.00")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Paid Amount",
                                          fontWeight: FontWeight.bold,
                                        ),
                                        Heading5(value: "14.00")
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Heading5(
                                          value: "Outstanding",
                                          fontWeight: FontWeight.bold,
                                        ),
                                        Heading5(value: "0.00")
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: size.width,
                            height: 1.5,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.grey.shade300,
                                      Colors.grey.shade300
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
                          Row(
                            children: [
                              Heading5(
                                  value: "Amount in words",
                                  fontWeight: FontWeight.bold),
                              SizedBox(
                                width: 20,
                              ),
                              Heading5(value: "Fourteen ")
                            ],
                          ),
                          Container(
                            width: size.width,
                            height: 1.5,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.grey.shade300,
                                      Colors.grey.shade300
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
                          Center(
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: DataTable(
                                  dataRowHeight: 30,
                                  headingRowHeight: 30,
                                  headingTextStyle: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                  horizontalMargin: 0,
                                  columnSpacing:
                                      Responsive.isDesktop(context) &&
                                              size.width < 1600
                                          ? size.width / 18
                                          : Responsive.isDesktop(context) &&
                                                  size.width > 1600
                                              ? size.width / 18
                                              : 20,
                                  showCheckboxColumn: false,
                                  checkboxHorizontalMargin: 10,
                                  showBottomBorder: false,
                                  columns: [
                                    DataColumn(
                                        label: HeadingText(
                                      size: 14,
                                      value: "Receipt No.",
                                      fontWeight: FontWeight.w700,
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Receipt Date",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Payment Mode",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Bank Name",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Received Amount",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                  ],
                                  rows: [
                                    DataRow(cells: [
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: "247",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: Funcs().getDateString(
                                            date: DateTime.now()),
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: "Cash",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: " ",
                                      )),
                                      DataCell(HeadingText(
                                        size: 14,
                                        value: "14.00",
                                      )),
                                    ]),
                                  ]),
                            ),
                          ),

                          // Spacer(),
                          Container(
                            width: size.width,
                            height: 1.5,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Colors.grey.shade300,
                                      Colors.grey.shade300
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
                          SizedBox(
                            height: 20,
                          ),
                          Heading5(
                            value: "* * End of Invoice * *",
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
                                    value: Funcs()
                                        .getDateString(date: DateTime.now()),
                                    color: Colors.black,
                                  ),
                                  Heading5(
                                    value: "Printed on",
                                    color: Colors.grey.shade900,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Heading5(
                                    value: "Admin IT",
                                    color: Colors.black,
                                  ),
                                  Heading5(
                                    value: "Printed By",
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
