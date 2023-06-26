import 'package:flutter/material.dart';
import 'package:skyhospital_erp/screens/Accounts%20&%20Revenue/components/collectPayment.comp.dart';
import 'package:skyhospital_erp/components/deleteDialog.comp.dart';
import 'package:skyhospital_erp/components/heading2.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class patientOrders extends StatefulWidget {
  const patientOrders({super.key});

  @override
  State<patientOrders> createState() => _patientOrdersState();
}

class _patientOrdersState extends State<patientOrders>
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
            padding: EdgeInsets.only(bottom: 20),
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
            child: SingleChildScrollView(
                child: SizedBox(
              width: Responsive.isDesktop(context)
                  ? size.width / 1.2
                  : size.width - 20,
              height: size.height - 70,
              child: Expanded(
                  child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(
                      top: Insets().appPadding / 2,
                      left: Insets().appPadding,
                      right: Insets().appPadding,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Heading2(
                                  value: "John Snow",
                                  fontWeight: FontWeight.w700,
                                  color: Colors.grey.shade900,
                                ),
                                Row(
                                  children: [
                                    Heading5(
                                      value: "Male, 23 Years. ",
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey.shade800,
                                    ),
                                    Heading5(
                                      value: " Mobile No: 1234567890. ",
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey.shade800,
                                    ),
                                    Heading5(
                                      value: " Outstanding: 0.00 ",
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey.shade800,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Heading5(
                                          value: "Payer:",
                                          fontWeight: FontWeight.w700,
                                          color: Colors.grey.shade900,
                                        ),
                                        Heading5(
                                          value: " PRIVATE CASH ",
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey.shade800,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Row(
                                      children: [
                                        Heading5(
                                          value: "Sponsor:",
                                          fontWeight: FontWeight.w700,
                                          color: Colors.grey.shade900,
                                        ),
                                        Heading5(
                                          value: " PRIVATE CASH ",
                                          fontWeight: FontWeight.w400,
                                          color: Colors.grey.shade800,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      showDialog(
                                          context: context,
                                          builder: (_) => collectPayment());
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Palette().primaryColor,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 10),
                                    ),
                                    child: Icon(
                                      Icons.save,
                                    ))
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: size.height - 193,
                      padding: EdgeInsets.only(
                        top: Insets().appPadding / 2,
                        bottom: Insets().appPadding,
                      ),
                      margin: EdgeInsets.only(
                          top: 0,
                          left: Insets().appPadding,
                          right: Insets().appPadding,
                          bottom: Insets().appPadding),
                      decoration: BoxDecoration(
                          color: Palette().primaryColorLight,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListView(children: [
                        Container(
                          margin: EdgeInsets.only(
                            left: Responsive.isDesktop(context)
                                ? Insets().appPadding / 2
                                : 13,
                            right: Responsive.isDesktop(context)
                                ? Insets().appPadding / 2
                                : 13,
                          ),
                          padding: EdgeInsets.all(Insets().appPadding / 3),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(Insets().appGap + 6)),
                          child: SizedBox(
                            width: double.infinity,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: DataTable(
                                  dataRowHeight: 55,
                                  headingTextStyle:
                                      TextStyle(color: Palette().primaryColor),
                                  horizontalMargin: 0,
                                  columnSpacing:
                                      Responsive.isDesktop(context) &&
                                              size.width < 1600
                                          ? size.width / 60
                                          : Responsive.isDesktop(context) &&
                                                  size.width > 1600
                                              ? size.width / 35
                                              : 25,
                                  showCheckboxColumn: true,
                                  checkboxHorizontalMargin: 10,
                                  showBottomBorder: true,
                                  columns: [
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Service Name",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Doctor",
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
                                        value: "Unit",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Net Amount",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Co-Pay",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Company Amount",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Patient Amnt",
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
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Action",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                  ],
                                  rows: [
                                    DataRow(
                                        onSelectChanged: (value) {},
                                        cells: [
                                          DataCell(HeadingText(
                                            size: 13,
                                            value: "CONSULTATION",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "GENERAL OFD",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "7.00",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "0.00",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "1",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "7.00",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "0.00",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "0.00",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "7.00",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "7.00",
                                          )),
                                          DataCell(Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    //showDialog(
                                                    //  context: context,
                                                    //   builder: (_) =>
                                                    //        addPatientVisit());
                                                  },
                                                  tooltip: "View",
                                                  icon: Icon(
                                                      Icons.visibility_outlined,
                                                      color: Colors.blue),
                                                  iconSize: 17),
                                              IconButton(
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (_) =>
                                                          deleteDialog());
                                                },
                                                icon: Icon(
                                                  Icons.clear,
                                                  color: Colors.red,
                                                ),
                                                tooltip: "Delete",
                                                iconSize: 17,
                                              ),
                                            ],
                                          )),
                                        ]),
                                    DataRow(
                                        onSelectChanged: (value) {},
                                        cells: [
                                          DataCell(HeadingText(
                                            size: 13,
                                            value: "FOLDER CHARGES",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: " ",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "7.00",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "0.00",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "1",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "7.00",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "0.00",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "0.00",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "7.00",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "7.00",
                                          )),
                                          DataCell(Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              IconButton(
                                                  onPressed: () {
                                                    //showDialog(
                                                    //  context: context,
                                                    //   builder: (_) =>
                                                    //        addPatientVisit());
                                                  },
                                                  tooltip: "View",
                                                  icon: Icon(
                                                      Icons.visibility_outlined,
                                                      color: Colors.blue),
                                                  iconSize: 17),
                                              IconButton(
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (_) =>
                                                          deleteDialog());
                                                },
                                                icon: Icon(
                                                  Icons.clear,
                                                  color: Colors.red,
                                                ),
                                                tooltip: "Delete",
                                                iconSize: 17,
                                              ),
                                            ],
                                          )),
                                        ]),
                                    DataRow(
                                        onSelectChanged: (value) {},
                                        cells: [
                                          DataCell(HeadingText(
                                            size: 13,
                                            value: " ",
                                          )),
                                          DataCell(HeadingText(
                                            size: 15,
                                            value: "Total",
                                            fontWeight: FontWeight.bold,
                                          )),
                                          DataCell(HeadingText(
                                            size: 15,
                                            value: "14.00",
                                            fontWeight: FontWeight.bold,
                                          )),
                                          DataCell(HeadingText(
                                            size: 15,
                                            value: "0.00",
                                            fontWeight: FontWeight.bold,
                                          )),
                                          DataCell(HeadingText(
                                            size: 15,
                                            value: "2",
                                            fontWeight: FontWeight.bold,
                                          )),
                                          DataCell(HeadingText(
                                            size: 15,
                                            value: "14.00",
                                            fontWeight: FontWeight.bold,
                                          )),
                                          DataCell(HeadingText(
                                            size: 15,
                                            value: "0.00",
                                            fontWeight: FontWeight.bold,
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
                                          DataCell(HeadingText(
                                            size: 15,
                                            value: "14.00",
                                            fontWeight: FontWeight.bold,
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: " ",
                                          )),
                                        ]),
                                  ]),
                            ),
                          ),
                        ),
                      ])),
                  Spacer(),
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(
                        top: Insets().appPadding / 2,
                        left: Insets().appPadding * 2,
                        right: Insets().appGap),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    HeadingText(
                                      size: 15,
                                      value: "Total Amount: ",
                                      color: Palette().primaryColor,
                                    ),
                                    Container(
                                      width: 110,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      alignment: Alignment.centerRight,
                                      color: Palette().primaryColorLight,
                                      child: HeadingText(
                                        size: 15,
                                        value: "17.00",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    HeadingText(
                                      size: 15,
                                      value: "Patient Payable: ",
                                      color: Palette().primaryColor,
                                    ),
                                    Container(
                                      width: 110,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      alignment: Alignment.centerRight,
                                      color: Palette().primaryColorLight,
                                      child: HeadingText(
                                        size: 15,
                                        value: "17.00",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    HeadingText(
                                      size: 15,
                                      value: "Advance Amt: ",
                                      color: Palette().primaryColor,
                                    ),
                                    Container(
                                      width: 110,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      alignment: Alignment.centerRight,
                                      color: Palette().primaryColorLight,
                                      child: HeadingText(
                                        size: 15,
                                        value: "0.00",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    HeadingText(
                                      size: 15,
                                      value: "Received Amt: ",
                                      color: Palette().primaryColor,
                                    ),
                                    Container(
                                      width: 110,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      alignment: Alignment.centerRight,
                                      color: Palette().primaryColorLight,
                                      child: HeadingText(
                                        size: 15,
                                        value: "17.00",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    HeadingText(
                                      size: 15,
                                      value: "Balance Amt: ",
                                      color: Palette().primaryColor,
                                    ),
                                    Container(
                                      width: 110,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 5, vertical: 5),
                                      alignment: Alignment.centerRight,
                                      color: Palette().primaryColorLight,
                                      child: HeadingText(
                                        size: 15,
                                        value: "0.00",
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )),
            )),
          ),
        ),
      ),
    );
  }
}
