import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/screens/Misc/operationRoom.scrn.dart';
import 'package:skyhospital_erp/screens/Misc/procedures.scrn.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class theater extends StatefulWidget {
  const theater({super.key});

  @override
  State<theater> createState() => _theaterState();
}

class _theaterState extends State<theater> {
  @override
  Widget build(BuildContext context) {
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
              value: "Theater",
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
                      child: tile3(
                    icon: Icons.hotel_rounded,
                    link: null,
                    linkTitle: "Schedule Patient",
                  )),
                  Expanded(
                      child: tile2(
                    tileHeading: "Procedures",
                    tileData: "10",
                    linkTitle: "View Procedures",
                    link: procedures(),
                  )),
                  Expanded(
                      child: Container(
                    child: tile2(
                      tileHeading: "Rooms Available",
                      tileData: "29",
                      linkTitle: "View Rooms",
                      link: operationRoom(),
                    ),
                  )),
                  Expanded(
                      child: Container(
                    margin: EdgeInsets.only(right: Insets().appPadding * 2),
                    child: tile2(
                        tileHeading: "Patients Scheduled", tileData: "13"),
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
                            Icons.hotel_rounded,
                            size: 50,
                            color: Colors.white,
                          ),
                          Spacer(),
                          ElevatedButton(
                              onPressed: () {
                                // showDialog(
                                //     context: context,
                                //     builder: (_) => addTheaterPatient());
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  padding: EdgeInsets.all(Insets().appPadding)),
                              child: Heading5(
                                value: "Schedule Patient",
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
                        tileHeading: "Procedures",
                        tileData: "5",
                        linkTitle: "View Procedures",
                        link: procedures(),
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        right: Insets().appPadding,
                      ),
                      child: tile2(
                        tileHeading: "Rooms Available",
                        tileData: "29",
                        linkTitle: "View Rooms",
                        link: operationRoom(),
                      )),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        right: Insets().appPadding,
                      ),
                      child: tile2(
                          tileHeading: "Patients Scheduled", tileData: "2")),
                ]
              ],
            ),
          ),
          searchBar(
            title: "Search for Patient",
            opt1: searchInputOptions(
              title: "Procedure",
              opt1: " ",
              opt2: " ",
            ),
            opt2: searchInputOptions(
              title: "Room",
              opt1: "",
              opt2: "",
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
                              value: "Patient ID.",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 150,
                            child: HeadingText(
                              size: 14,
                              value: "Patient Name",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 120,
                            child: HeadingText(
                              size: 14,
                              value: "Surgery Date",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: null,
                            child: HeadingText(
                              size: 14,
                              value: "Surgery Time",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 150,
                            child: HeadingText(
                              size: 14,
                              value: "Procedure Type",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 120,
                            child: HeadingText(
                              size: 14,
                              value: "Surgeon",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 150,
                            child: HeadingText(
                              size: 14,
                              value: "Anesthesia Provider",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 150,
                            child: HeadingText(
                              size: 14,
                              value: "Operating Room",
                              fontWeight: FontWeight.w700,
                            ),
                          )),
                          DataColumn(
                              label: SizedBox(
                            width: 110,
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
