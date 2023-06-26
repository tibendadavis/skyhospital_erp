import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';

import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/Payroll%20Management/addPayroll.scrn.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class payroll extends StatefulWidget {
  const payroll({super.key});

  @override
  State<payroll> createState() => _payrollState();
}

class _payrollState extends State<payroll> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.bottomLeft,
            padding: EdgeInsets.only(
                top: Insets().appPadding,
                left: Responsive.isDesktop(context)
                    ? Insets().appPadding * 2
                    : Insets().appPadding,
                right: Insets().appGap),
            child: HeadingText(
              size: Responsive.isDesktop(context) ? 35 : 30,
              value: "Payroll",
              fontWeight: FontWeight.w700,
              color: Colors.grey.shade800,
            ),
          ),
          SizedBox(
            width: Responsive.isDesktop(context) ? size.width / 2.38 : null,
            child: Flex(
              direction: Responsive.isDesktop(context)
                  ? Axis.horizontal
                  : Axis.vertical,
              children: [
                if (Responsive.isDesktop(context)) ...[
                  Expanded(
                      child: tile3(
                    icon: Icons.payment,
                    link: addPayroll(),
                    linkTitle: "New Payroll",
                  )),
                  Expanded(
                      child: tile2(
                    tileHeading: "Total Payroll",
                    tileData: "7",
                  )),
                ],
                if (!Responsive.isDesktop(context)) ...[
                  Container(
                      margin: EdgeInsets.only(
                        left: Insets().appPadding,
                        right: Insets().appPadding,
                      ),
                      child: tile3(
                        icon: Icons.store_rounded,
                        link: addPayroll(),
                        linkTitle: "New Payroll",
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        right: Insets().appPadding,
                      ),
                      child: tile2(
                        tileHeading: "Total Payroll",
                        tileData: "7",
                      )),
                ]
              ],
            ),
          ),
          searchBar(
            title: "Search for Payroll",
            opt1: searchInputOptions(
              title: "Designation",
              opt1: "",
            ),
          ),
          downloadBar(
            results: '27',
          ),
          Expanded(
            child: ListView(children: [
              Container(
                margin: EdgeInsets.only(
                  left:
                      Responsive.isDesktop(context) ? Insets().appPadding : 13,
                  right:
                      Responsive.isDesktop(context) ? Insets().appPadding : 13,
                ),
                padding: EdgeInsets.all(Insets().appPadding / 3),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Insets().appGap + 6)),
                child: Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                        headingTextStyle:
                            TextStyle(color: Palette().primaryColor),
                        horizontalMargin: 0,
                        columnSpacing: Responsive.isDesktop(context) &&
                                size.width < 1600
                            ? size.width / 20
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 15
                                : 25,
                        columns: [
                          DataColumn(
                              label: Checkbox(
                            value: false,
                            onChanged: (value) {
                              setState(() {});
                            },
                          )),
                          DataColumn(
                              label: HeadingText(
                            size: 14,
                            value: "Payroll ID",
                            fontWeight: FontWeight.w700,
                          )),
                          DataColumn(
                              label: HeadingText(
                            size: 14,
                            value: "Employee",
                            fontWeight: FontWeight.w700,
                          )),
                          DataColumn(
                              label: HeadingText(
                            size: 14,
                            value: "Department",
                            fontWeight: FontWeight.w700,
                          )),
                          DataColumn(
                              label: HeadingText(
                            size: 14,
                            value: "Salary",
                            fontWeight: FontWeight.w700,
                          )),
                          DataColumn(
                              label: SizedBox(
                            child: HeadingText(
                              size: 14,
                              value: "Bonus",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: HeadingText(
                            size: 14,
                            value: "Leave Status",
                            fontWeight: FontWeight.w700,
                          )),
                          DataColumn(
                              label: HeadingText(
                            size: 14,
                            value: "Date of Payroll",
                            fontWeight: FontWeight.w700,
                          )),
                          DataColumn(
                              label: HeadingText(
                            size: 14,
                            value: "Total Amount",
                            fontWeight: FontWeight.w700,
                          )),
                          DataColumn(
                              label: HeadingText(
                            size: 14,
                            value: "Note",
                            fontWeight: FontWeight.w700,
                          )),
                          DataColumn(
                              label: HeadingText(
                            size: 14,
                            value: "Action",
                            fontWeight: FontWeight.w700,
                          )),
                        ],
                        rows: []),
                  ),
                ),
              ),
            ]),
          )
        ],
      )),
    );
  }
}
