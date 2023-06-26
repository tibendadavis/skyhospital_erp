import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/alertDialog.comp.dart';

import 'package:skyhospital_erp/components/heading2.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/screens/Laboratory/resultEntry.comp.dart';

import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class patientLab extends StatefulWidget {
  const patientLab({super.key});

  @override
  State<patientLab> createState() => _patientLabState();
}

class _patientLabState extends State<patientLab>
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
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: SingleChildScrollView(
                child: SizedBox(
              width: Responsive.isDesktop(context)
                  ? size.width / 1.2
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
                        Heading2(
                          value: "John Snow",
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade800,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: size.height - 320,
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
                          borderRadius:
                              BorderRadius.circular(Insets().appRadius)),
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
                                          ? size.width / 30
                                          : Responsive.isDesktop(context) &&
                                                  size.width > 1600
                                              ? size.width / 20
                                              : 25,
                                  showCheckboxColumn: true,
                                  checkboxHorizontalMargin: 10,
                                  showBottomBorder: true,
                                  columns: [
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "ChargeSlip No.",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Investigation Name",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Acknowledge Date",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Result Date",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Finalize Date",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Dispatch Date",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                    DataColumn(
                                        label: Expanded(
                                      child: HeadingText(
                                        size: 14,
                                        value: "Exclude",
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
                                            value: "181",
                                          )),
                                          DataCell(HeadingText(
                                            size: 14,
                                            value: "LIPID PROFILE",
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
                                            value: "No",
                                          )),
                                          DataCell(Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              IconButton(
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (_) => alert(
                                                            icon: Icon(
                                                                Icons.check,
                                                                color: Colors
                                                                    .green,
                                                                size: 60),
                                                            title: "Success",
                                                            content:
                                                                "Sample acknowledged Successfully",
                                                          ));
                                                },
                                                icon: Icon(
                                                  Icons.check,
                                                  color: Colors.blue,
                                                ),
                                                tooltip: "Acknowledge",
                                                iconSize: 17,
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (_) =>
                                                          resultEntry());
                                                },
                                                icon: Icon(
                                                  Icons.output_rounded,
                                                  color: Colors.grey.shade800,
                                                ),
                                                tooltip: "Result",
                                                iconSize: 17,
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  showDialog(
                                                      context: context,
                                                      builder: (_) => alert(
                                                            icon: Icon(
                                                                Icons.check,
                                                                color: Colors
                                                                    .green,
                                                                size: 60),
                                                            title: "Success",
                                                            content:
                                                                "Report finalized successfully",
                                                          ));
                                                },
                                                icon: Icon(
                                                  Icons.report,
                                                  color: Palette().primaryColor,
                                                ),
                                                tooltip: "Finalize",
                                                iconSize: 17,
                                              ),
                                            ],
                                          )),
                                        ]),
                                  ]),
                            ),
                          ),
                        ),
                      ]))
                ],
              )),
            )),
          ),
        ),
      ),
    );
  }
}
