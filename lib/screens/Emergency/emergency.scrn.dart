import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/Emergency/addEmergency.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class emergency extends StatefulWidget {
  const emergency({super.key});

  @override
  State<emergency> createState() => _emergencyState();
}

class _emergencyState extends State<emergency> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: Column(
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
              value: "Emergency",
              fontWeight: FontWeight.w700,
              color: Colors.grey.shade800,
            ),
          ),
          Flex(
            direction:
                Responsive.isDesktop(context) ? Axis.horizontal : Axis.vertical,
            children: [
              if (Responsive.isDesktop(context)) ...[
                Expanded(
                    child: tile3(
                  icon: Icons.emergency,
                  link: addEmergency(),
                  linkTitle: "New Emergency",
                )),
                Expanded(
                    child: tile2(tileHeading: "Emergencies", tileData: "240")),
                Expanded(
                    child:
                        tile2(tileHeading: "Male Emergency", tileData: "120")),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(right: Insets().appPadding * 2),
                  child:
                      tile2(tileHeading: "Female Emergency", tileData: "120"),
                ))
              ],
              if (!Responsive.isDesktop(context)) ...[
                Container(
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                      top: Insets().appPadding / 2,
                    ),
                    child: tile3(
                      icon: Icons.emergency,
                      link: addEmergency(),
                      linkTitle: "New Emergency",
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Emergencies", tileData: "240")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Total Male", tileData: "120")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Total Female", tileData: "120")),
              ]
            ],
          ),
          searchBar(
              title: "Search for Emergency",
              opt1: searchInputOptions(
                title: "District",
                opt1: "All Districts",
                opt2: "Kishapu1",
                opt3: "Kishapu2",
                opt4: "Kishapu3",
                opt5: "Kishapu4",
              )),
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
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                      dataRowHeight: 55,
                      headingTextStyle:
                          TextStyle(color: Palette().primaryColor),
                      horizontalMargin: 0,
                      columnSpacing: Responsive.isDesktop(context) &&
                              size.width < 1600
                          ? size.width / 40
                          : Responsive.isDesktop(context) && size.width > 1600
                              ? size.width / 24
                              : 25,
                      showCheckboxColumn: false,
                      checkboxHorizontalMargin: 10,
                      showBottomBorder: true,
                      columns: [
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Visit No.",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Reg No.",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                            label: SizedBox(
                          width: 130,
                          child: HeadingText(
                            size: 14,
                            value: "Patient Name",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                            label: SizedBox(
                          child: HeadingText(
                            size: 14,
                            value: "Age / Gender",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Company Name",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Bed No.",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Admission Date\n&Time",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Discharge Date",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Remarks",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        DataColumn(
                          label: HeadingText(
                            size: 14,
                            value: "Action",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                      rows: []),
                ),
              ),
            ]),
          )
        ],
      )),
    );
  }
}
