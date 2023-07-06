import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class referralreport extends StatefulWidget {
  const referralreport({super.key});

  @override
  State<referralreport> createState() => _referralreportState();
}

class _referralreportState extends State<referralreport> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
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
              value: "Referral Report",
              fontWeight: FontWeight.w700,
              color: Colors.grey.shade800,
            ),
          ),
          SizedBox(
            width: Responsive.isDesktop(context) ? 360 : null,
            child: Flex(
              direction: Responsive.isDesktop(context)
                  ? Axis.horizontal
                  : Axis.vertical,
              children: [
                if (Responsive.isDesktop(context)) ...[
                  Expanded(
                      child: tile2(
                    tileHeading: "Total Referrals",
                    tileData: "77",
                    icon: Icons.output_rounded,
                  )),
                ],
                if (!Responsive.isDesktop(context)) ...[
                  Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(
                        right: Insets().appPadding,
                      ),
                      child: tile2(
                        tileHeading: "Total Referrals",
                        tileData: "77",
                        icon: Icons.output_rounded,
                      )),
                ]
              ],
            ),
          ),
          searchBar(
            title: "Search for Patient",
            opt1: searchInputOptions(
              title: "Referred To",
              opt1: "",
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
                              width: 100,
                              child: HeadingText(
                                size: 14,
                                value: "Patient No.",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: 150,
                              child: HeadingText(
                                size: 14,
                                value: "Full Name",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: 100,
                              child: HeadingText(
                                size: 14,
                                value: "Date",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: 200,
                              child: HeadingText(
                                size: 14,
                                value: "Referred To",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: 200,
                              child: HeadingText(
                                size: 14,
                                value: "Medical History",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: 190,
                              child: HeadingText(
                                size: 14,
                                value: "Positive Findings",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: 100,
                              child: HeadingText(
                                size: 14,
                                value: "Diagnosis",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: 150,
                              child: HeadingText(
                                size: 14,
                                value: "Treatment Given",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: 200,
                              child: HeadingText(
                                size: 14,
                                value: "Doctor's Note",
                                fontWeight: FontWeight.w700,
                              ),
                            )),
                            DataColumn(
                                label: SizedBox(
                              width: 100,
                              child: HeadingText(
                                size: 14,
                                value: "Doctor",
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
