import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';

import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/Inventory%20&%20Assets/addStore.scrn.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class stores extends StatefulWidget {
  const stores({super.key});

  @override
  State<stores> createState() => _storesState();
}

class _storesState extends State<stores> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            value: "Stores",
            fontWeight: FontWeight.w700,
            color: Colors.grey.shade800,
          ),
        ),
        SizedBox(
          width: Responsive.isDesktop(context) ? size.width / 2.38 : null,
          child: Flex(
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            children: [
              if (Responsive.isDesktop(context)) ...[
                Expanded(
                    child: tile3(
                  icon: Icons.store_rounded,
                  link: addStore(),
                  linkTitle: "New Store",
                )),
                Expanded(
                    child: tile2(
                  tileHeading: "Total Stores",
                  tileData: "7",
                )),
              ],
              if (!Responsive.isDesktop(context)) ...[
                Container(
                  margin: EdgeInsets.only(
                    left: Insets().appPadding,
                    right: Insets().appPadding,
                    top: Insets().appPadding / 2,
                  ),
                  padding: EdgeInsets.only(
                      left: Insets().appPadding,
                      right: Insets().appPadding,
                      top: Insets().appGap + 2,
                      bottom: Insets().appPadding),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Palette().borderColor,
                          blurRadius: 15.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: Offset(
                            1.0, // Move to right 5  horizontally
                            2.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                      color: Palette().primaryColor,
                      borderRadius:
                          BorderRadius.circular(Insets().appRadiusMin + 4)),
                  child: SizedBox(
                    height: 70,
                    child: Row(
                      children: [
                        Icon(
                          Icons.store_rounded,
                          size: 50,
                          color: Colors.white,
                        ),
                        Spacer(),
                        ElevatedButton(
                            onPressed: () {
                              showDialog(
                                  context: context, builder: (_) => addStore());
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        Insets().appRadiusMin + 4)),
                                padding: EdgeInsets.all(Insets().appPadding)),
                            child: Heading5(
                              value: "New Store",
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ),
                ),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(
                      tileHeading: "Total Categories",
                      tileData: "7",
                    )),
              ]
            ],
          ),
        ),
        searchBar(title: "Search for Store"),
        downloadBar(
          results: '27',
        ),
        Expanded(
          child: ListView(children: [
            Container(
              margin: EdgeInsets.only(
                left: Responsive.isDesktop(context) ? Insets().appPadding : 13,
                right: Responsive.isDesktop(context) ? Insets().appPadding : 13,
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
                          ? size.width / 10
                          : Responsive.isDesktop(context) && size.width > 1600
                              ? size.width / 8
                              : 25,
                      showCheckboxColumn: true,
                      checkboxHorizontalMargin: 10,
                      showBottomBorder: true,
                      columns: [
                        DataColumn(
                            label: Expanded(
                          child: HeadingText(
                            size: 14,
                            value: "Store Category",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: Expanded(
                          child: HeadingText(
                            size: 14,
                            value: "Store Name",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: Expanded(
                          child: HeadingText(
                            size: 14,
                            value: "Contact Number",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: Expanded(
                          child: HeadingText(
                            size: 14,
                            value: "TIN No.",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: Expanded(
                          child: HeadingText(
                            size: 14,
                            value: "Region",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                      ],
                      rows: [
                        DataRow(
                            onSelectChanged: (value) {
                              // showDialog(
                              //     context: context,
                              //     builder: (_) => bedTasks());
                            },
                            cells: [
                              DataCell(HeadingText(
                                size: 13,
                                value: "Pharmacy",
                              )),
                              DataCell(HeadingText(
                                size: 14,
                                value: "Test",
                              )),
                              DataCell(HeadingText(
                                size: 14,
                                value: "1234567890",
                              )),
                              DataCell(HeadingText(
                                size: 14,
                                value: "098765412456",
                              )),
                              DataCell(HeadingText(
                                size: 14,
                                value: "Dar es salaam",
                              )),
                            ]),
                      ]),
                ),
              ),
            ),
          ]),
        )
      ])),
    );
  }
}
