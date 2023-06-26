import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading3.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/screens/Laboratory/components/resultReport.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class testResults extends StatefulWidget {
  testResults({super.key});

  @override
  State<testResults> createState() => _testResultsState();
}

class _testResultsState extends State<testResults> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
                top: Insets().appPadding,
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
                borderRadius: BorderRadius.circular(Insets().appRadiusMin + 4)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Heading3(
                    value: "Test Results",
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
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
                            dataRowHeight: 50,
                            headingTextStyle:
                                TextStyle(color: Palette().primaryColor),
                            horizontalMargin: 0,
                            columnSpacing: Responsive.isDesktop(context) &&
                                    size.width < 1600
                                ? size.width / 3.5
                                : Responsive.isDesktop(context) &&
                                        size.width > 1600
                                    ? size.width / 3
                                    : 25,
                            showCheckboxColumn: false,
                            checkboxHorizontalMargin: 10,
                            showBottomBorder: true,
                            columns: [
                              DataColumn(
                                  label: HeadingText(
                                size: 14,
                                value: "Visit Date",
                                fontWeight: FontWeight.w700,
                              )),
                              DataColumn(
                                  label: Expanded(
                                child: HeadingText(
                                  size: 14,
                                  value: "Test Results",
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                            ],
                            rows: [
                              DataRow(cells: [
                                DataCell(HeadingText(
                                  size: 13,
                                  value: "13/07/2022 ",
                                )),
                                DataCell(Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (_) => resultReport());
                                      },
                                      child: HeadingText(
                                          size: 13,
                                          value: "LIPID PROFILE",
                                          color: Palette().primaryColor),
                                    ),
                                    HeadingText(
                                      size: 14,
                                      value: " | ",
                                    ),
                                    InkWell(
                                      onTap: () {
                                        showDialog(
                                            context: context,
                                            builder: (_) => resultReport());
                                      },
                                      child: HeadingText(
                                        size: 13,
                                        value: "X-RAY CHEST (LATERAL)",
                                        color: Palette().primaryColor,
                                      ),
                                    ),
                                  ],
                                )),
                              ]),
                            ]),
                      ),
                    ),
                  ),
                ]),
          ),
        ],
      )),
    );
  }
}
