import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class visualTestSetting extends StatefulWidget {
  const visualTestSetting({super.key});

  @override
  State<visualTestSetting> createState() => _visualTestSettingState();
}

class _visualTestSettingState extends State<visualTestSetting> {
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
              value: "Visual Test Setting",
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
                      child: tile3(
                    icon: Icons.visibility_rounded,
                    link: null,
                    linkTitle: "New Setting",
                  )),
                  Expanded(
                      child: tile2(
                    tileHeading: "Total Test Settings",
                    tileData: "10",
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
                            Icons.visibility_rounded,
                            size: 50,
                            color: Colors.white,
                          ),
                          Spacer(),
                          ElevatedButton(
                              onPressed: () {
                                // showDialog(
                                //     context: context,
                                //     builder: (_) => addVisualTestSetting());
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          Insets().appRadiusMin + 4)),
                                  padding: EdgeInsets.all(Insets().appPadding)),
                              child: Heading5(
                                value: "New Setting",
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
                        tileHeading: "Total Test Settings",
                        tileData: "5",
                      )),
                ]
              ],
            ),
          ),
          searchBar(
            title: "Search for Visual Test Setting",
            opt1: searchInputOptions(
              title: "Chart Type",
              opt1: "Snellen Chart",
              opt2: "Tumbling E Chart",
              opt3: "Landolt C Chart",
              opt4: "Sloan Chart",
              opt5: "HOTV Chart",
              opt6: "Lea Symbols",
            ),
            opt2: searchInputOptions(
              title: "Lighting",
              opt1: "Bright",
              opt2: "Dim",
              opt3: "Color Temp",
            ),
            opt3: searchInputOptions(
              title: "Orientation",
              opt1: "Landscape",
              opt2: "Potrait",
            ),
          ),
          downloadBar(
            results: '27',
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: Responsive.isDesktop(context)
                        ? Insets().appPadding
                        : 13,
                    right: Responsive.isDesktop(context)
                        ? Insets().appPadding
                        : 13,
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
                          columnSpacing:
                              Responsive.isDesktop(context) ? 20 : 10,
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
                              width: 200,
                              child: HeadingText(
                                size: 14,
                                value: "Test Setting Name",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: 200,
                              child: HeadingText(
                                size: 14,
                                value: "Chart Type",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: 150,
                              child: HeadingText(
                                size: 14,
                                value: "Testing Distance\n(meters)",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: 190,
                              child: HeadingText(
                                size: 14,
                                value: "Lighting Conditions",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: 100,
                              child: HeadingText(
                                size: 14,
                                value: "No. of Letters/\nSymbols",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: 100,
                              child: HeadingText(
                                size: 14,
                                value: "Size of Letters/\nSymbols",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: null,
                              child: HeadingText(
                                size: 14,
                                value: "Orientation",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: 150,
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
              ],
            ),
          )
        ],
      )),
    );
  }
}
