import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';

import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/Payroll%20Management/addEmployeeBonus.scrn.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class employeeBonus extends StatefulWidget {
  const employeeBonus({super.key});

  @override
  State<employeeBonus> createState() => _employeeBonusState();
}

class _employeeBonusState extends State<employeeBonus> {
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
              value: "Employee Bonus",
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
                    link: addEmployeeBonus(),
                    linkTitle: "New Bonus",
                  )),
                  Expanded(
                      child: tile2(
                    tileHeading: "Employee Salaries",
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
                        link: addEmployeeBonus(),
                        linkTitle: "New Bonus",
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        right: Insets().appPadding,
                      ),
                      child: tile2(
                        tileHeading: "Employee Salaries",
                        tileData: "7",
                      )),
                ]
              ],
            ),
          ),
          searchBar(
            title: "Search for Employee Bonus",
            opt1: searchInputOptions(
              title: "Department",
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
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "No.",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: Responsive.isDesktop(context) ? 120 : 150,
                            child: HeadingText(
                              size: 14,
                              value: "Bonus ID",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: Responsive.isDesktop(context) ? 120 : 150,
                            child: HeadingText(
                              size: 14,
                              value: "Department",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: Responsive.isDesktop(context) ? 150 : 150,
                            child: HeadingText(
                              size: 14,
                              value: "Amount",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: Responsive.isDesktop(context) ? null : null,
                            child: HeadingText(
                              size: 14,
                              value: "Annual Expense",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: Responsive.isDesktop(context) ? 100 : 100,
                            child: HeadingText(
                              size: 14,
                              value: "Action",
                              fontWeight: FontWeight.w700,
                            ),
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
