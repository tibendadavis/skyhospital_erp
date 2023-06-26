import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class admins extends StatefulWidget {
  const admins({super.key});

  @override
  State<admins> createState() => _adminsState();
}

class _adminsState extends State<admins> {
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
              value: "Administrator",
              fontWeight: FontWeight.w700,
              color: Colors.grey.shade800,
            ),
          ),
          SizedBox(
            width: Responsive.isDesktop(context) ? size.width / 2.4 : null,
            child: Flex(
              direction: Responsive.isDesktop(context)
                  ? Axis.horizontal
                  : Axis.vertical,
              children: [
                if (Responsive.isDesktop(context)) ...[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: Insets().appPadding * 2,
                          top: Insets().appPadding,
                          bottom: Insets().appPadding),
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
                              Icons.person,
                              size: 50,
                              color: Colors.white,
                            ),
                            Spacer(),
                            ElevatedButton(
                                onPressed: () {
                                  // showDialog(
                                  //     context: context,
                                  //     builder: (_) => addAdmin());
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            Insets().appRadiusMin + 4)),
                                    padding:
                                        EdgeInsets.all(Insets().appPadding)),
                                child: Heading5(
                                  value: "New Administrator",
                                  color: Colors.black,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      child: tile2(
                          tileHeading: "Total Administrators",
                          tileData: "240")),
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
                            Icons.person,
                            size: 50,
                            color: Colors.white,
                          ),
                          Spacer(),
                          ElevatedButton(
                              onPressed: () {
                                // showDialog(
                                //     context: context,
                                //     builder: (_) => addAdmin());
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  padding: EdgeInsets.all(Insets().appPadding)),
                              child: Heading5(
                                value: "New Administrator",
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
                          tileHeading: "Total Administrators",
                          tileData: "240")),
                ]
              ],
            ),
          ),
          searchBar(
            title: "Search for Administrator",
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
                        columnSpacing: Responsive.isDesktop(context) ? 20 : 10,
                        columns: [
                          DataColumn(
                              label: Checkbox(
                            value: false,
                            onChanged: (value) {
                              setState(() {});
                            },
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: null,
                            child: HeadingText(
                              size: 14,
                              value: "No.",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 100,
                            child: HeadingText(
                              size: 14,
                              value: "Name",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 130,
                            child: HeadingText(
                              size: 14,
                              value: "Password",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 130,
                            child: HeadingText(
                              size: 14,
                              value: "National ID",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            child: HeadingText(
                              size: 14,
                              value: "Gender",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 100,
                            child: HeadingText(
                              size: 14,
                              value: "Date of Birth",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 100,
                            child: HeadingText(
                              size: 14,
                              value: "Nationality",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 100,
                            child: HeadingText(
                              size: 14,
                              value: "Telephone",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 100,
                            child: HeadingText(
                              size: 14,
                              value: "Address",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 100,
                            child: HeadingText(
                              size: 14,
                              value: "Action",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                        ],
                        rows: [
                          DataRow(cells: [
                            DataCell(Checkbox(
                              value: false,
                              onChanged: (value) {
                                setState(() {});
                              },
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Kwilasa,\nMinda Busobe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "************",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: " - ",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "MA",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1936-07-01",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzanian",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "(255) 787-112-752",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mwamala\nNurse Shy",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "",
                            )),
                          ]),
                          DataRow(selected: true, cells: [
                            DataCell(Checkbox(
                              value: false,
                              onChanged: (value) {
                                setState(() {});
                              },
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Kwilasa,\nMinda Busobe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "************",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: " - ",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "MA",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1936-07-01",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzanian",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "(255) 787-112-752",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mwamala\nNurse Shy",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "",
                            )),
                          ]),
                          DataRow(cells: [
                            DataCell(Checkbox(
                              value: false,
                              onChanged: (value) {
                                setState(() {});
                              },
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Kwilasa,\nMinda Busobe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "************",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: " - ",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "MA",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1936-07-01",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzanian",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "(255) 787-112-752",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mwamala\nNurse Shy",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "",
                            )),
                          ]),
                          DataRow(selected: true, cells: [
                            DataCell(Checkbox(
                              value: false,
                              onChanged: (value) {
                                setState(() {});
                              },
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Kwilasa,\nMinda Busobe",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "************",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: " - ",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "MA",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "1936-07-01",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Tanzanian",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "(255) 787-112-752",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "Mwamala\nNurse Shy",
                            )),
                            DataCell(HeadingText(
                              size: 14,
                              value: "",
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
