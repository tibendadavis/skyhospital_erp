import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/deleteDialog.comp.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/screens/Pharmacy%20Management/patientPrescription.comp.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class pharmacy extends StatefulWidget {
  const pharmacy({super.key});

  @override
  State<pharmacy> createState() => _pharmacyState();
}

class _pharmacyState extends State<pharmacy> {
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
              value: "Pharmacy",
              fontWeight: FontWeight.w700,
              color: Colors.grey.shade800,
            ),
          ),
          SizedBox(
            //  width: Responsive.isDesktop(context) ? size.width / 2.4 : null,
            child: Flex(
              direction: Responsive.isDesktop(context)
                  ? Axis.horizontal
                  : Axis.vertical,
              children: [
                if (Responsive.isDesktop(context)) ...[
                  Expanded(
                      child: tile2(
                    tileHeading: "Total Prescription",
                    tileData: "7",
                  )),
                  Expanded(
                      child: tile2(
                    tileHeading: "Total Dispenses",
                    tileData: "7",
                  )),
                  Expanded(
                      child:
                          tile2(tileHeading: "Stock Available", tileData: "5")),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(right: Insets().appPadding * 2),
                    child: tile2(tileHeading: "Total Referrals", tileData: "2"),
                  )),
                ],
                if (!Responsive.isDesktop(context)) ...[
                  Container(
                      padding: EdgeInsets.only(
                        right: Insets().appPadding,
                      ),
                      child: tile2(
                        tileHeading: "Total Prescriptions",
                        tileData: "7",
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        right: Insets().appPadding,
                      ),
                      child: tile2(
                        tileHeading: "Total Dispenses",
                        tileData: "7",
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        right: Insets().appPadding,
                      ),
                      child:
                          tile2(tileHeading: "Stock Available", tileData: "5")),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        right: Insets().appPadding,
                      ),
                      child:
                          tile2(tileHeading: "Total Referrals", tileData: "2")),
                ]
              ],
            ),
          ),
          searchBar(title: "Search for Patient"),
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
                child: SizedBox(
                  width: double.infinity,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                        dataRowHeight: 55,
                        headingTextStyle:
                            TextStyle(color: Palette().primaryColor),
                        horizontalMargin: 0,
                        columnSpacing: Responsive.isDesktop(context) &&
                                size.width < 1600
                            ? size.width / 30
                            : Responsive.isDesktop(context) && size.width > 1600
                                ? size.width / 21
                                : 25,
                        showCheckboxColumn: true,
                        checkboxHorizontalMargin: 10,
                        showBottomBorder: true,
                        columns: [
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Visit No",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Date & Time",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Clinic/Department",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Reg No.",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Patient Name",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Age",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Status",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Visit Complete\nDate Time",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: Expanded(
                            child: HeadingText(
                              size: 14,
                              value: "Remark",
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
                              onSelectChanged: (value) {
                                showDialog(
                                    context: context,
                                    builder: (_) => patientPrescription());
                              },
                              cells: [
                                DataCell(HeadingText(
                                  size: 13,
                                  value: "181",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "13/07/2022 10:36",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "General OPD",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "116",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "John Snow",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "23Y/M",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: "Billed",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: " ",
                                )),
                                DataCell(HeadingText(
                                  size: 14,
                                  value: " ",
                                )),
                                DataCell(Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (_) => deleteDialog());
                                      },
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.redAccent,
                                      ),
                                      tooltip: "Delete",
                                      iconSize: 17,
                                    ),
                                  ],
                                )),
                              ]),
                        ]),
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
