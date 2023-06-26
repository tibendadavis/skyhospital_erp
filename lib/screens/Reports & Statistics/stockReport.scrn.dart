import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';

import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/Misc/storeCategory.scrn.dart';
import 'package:skyhospital_erp/screens/Inventory%20&%20Assets/storeItem.scrn.dart';
import 'package:skyhospital_erp/screens/Misc/storeType.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class stockReport extends StatefulWidget {
  stockReport({super.key});

  @override
  State<stockReport> createState() => stockReportState();
}

class stockReportState extends State<stockReport> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: ListView(
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(
                        top: Insets().appPadding / 2,
                        left: Responsive.isDesktop(context)
                            ? Insets().appPadding
                            : Insets().appPadding,
                        right: Insets().appPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: HeadingText(
                            size: Responsive.isDesktop(context) ? 27 : 23,
                            value: "Stock Reports",
                            fontWeight: FontWeight.w700,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Palette().primaryColor,
                          width: 1.3,
                        ),
                        borderRadius:
                            BorderRadius.circular(Insets().appRadius)),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(
                              top: Insets().appPadding / 2,
                              left: Responsive.isDesktop(context)
                                  ? Insets().appPadding
                                  : Insets().appPadding,
                              right: Insets().appPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: HeadingText(
                                  size: Responsive.isDesktop(context) ? 23 : 22,
                                  value: "Stock Overview",
                                  fontWeight: FontWeight.w700,
                                  color: Palette().primaryColor,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.restart_alt_rounded,
                                  size: 40,
                                  color: Palette().primaryColor,
                                ),
                              )
                            ],
                          ),
                        ),
                        Flex(
                          direction: Responsive.isDesktop(context)
                              ? Axis.horizontal
                              : Axis.vertical,
                          children: [
                            if (Responsive.isDesktop(context)) ...[
                              Expanded(
                                  child: tile2(
                                tileHeading: "Current Stock Level",
                                tileData: "99999",
                                linkTitle: "View Full\nReport",
                                link: storeItem(),
                              )),
                              Expanded(
                                  child: tile2(
                                      tileHeading: "Last Month Usage",
                                      icon: Icons.data_usage_rounded,
                                      tileData: "120")),
                              Expanded(
                                child: tile2(
                                    tileHeading: "Reorder Level",
                                    icon: Icons.reorder_rounded,
                                    tileData: "120"),
                              ),
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.only(
                                    right: Insets().appPadding * 2),
                                child: tile2(
                                    tileHeading: "Total Cost",
                                    tileData: "14000000"),
                              )),
                            ],
                            if (!Responsive.isDesktop(context)) ...[
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                    right: Insets().appPadding,
                                  ),
                                  child: tile2(
                                    tileHeading: "Current Stock Level",
                                    tileData: "99999",
                                    linkTitle: "View Full\nReport",
                                    link: storeItem(),
                                  )),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                    right: Insets().appPadding,
                                  ),
                                  child: tile2(
                                      tileHeading: "Last Month Usage",
                                      icon: Icons.data_usage_rounded,
                                      tileData: "120")),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                ),
                                child: tile2(
                                    tileHeading: "Reorder Level",
                                    icon: Icons.reorder_rounded,
                                    tileData: "120"),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                  bottom: Insets().appPadding,
                                ),
                                child: tile2(
                                    tileHeading: "Total Cost",
                                    tileData: "14000000"),
                              ),
                            ]
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Palette().primaryColor,
                          width: 1.3,
                        ),
                        borderRadius:
                            BorderRadius.circular(Insets().appRadius)),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(
                              top: Insets().appPadding / 2,
                              left: Responsive.isDesktop(context)
                                  ? Insets().appPadding
                                  : Insets().appPadding,
                              right: Insets().appPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: HeadingText(
                                  size: Responsive.isDesktop(context) ? 23 : 22,
                                  value: "Package Types Overview",
                                  fontWeight: FontWeight.w700,
                                  color: Palette().primaryColor,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.restart_alt_rounded,
                                  size: 40,
                                  color: Palette().primaryColor,
                                ),
                              )
                            ],
                          ),
                        ),
                        Flex(
                          direction: Responsive.isDesktop(context)
                              ? Axis.horizontal
                              : Axis.vertical,
                          children: [
                            if (Responsive.isDesktop(context)) ...[
                              Expanded(
                                  child: tile2(
                                tileHeading: "Total Types",
                                tileData: "99",
                                linkTitle: "View Full\nReport",
                                link: storeType(),
                              )),
                              Expanded(
                                  child: tile2(
                                tileHeading: "Order Frequency",
                                tileData: "120",
                                icon: Icons.timeline_outlined,
                              )),
                              Expanded(
                                child: tile2(
                                    tileHeading: "Lead Time",
                                    tileData: "120",
                                    icon: Icons.timelapse_rounded),
                              ),
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.only(
                                    right: Insets().appPadding * 2),
                                child: tile2(
                                  tileHeading: "Stock Level",
                                  tileData: "140",
                                  icon: Icons.line_axis_rounded,
                                ),
                              )),
                            ],
                            if (!Responsive.isDesktop(context)) ...[
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                    right: Insets().appPadding,
                                  ),
                                  child: tile2(
                                    tileHeading: "Total Types",
                                    tileData: "999",
                                    linkTitle: "View Full\nReport",
                                    link: storeType(),
                                  )),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                    right: Insets().appPadding,
                                  ),
                                  child: tile2(
                                      tileHeading: "Order Frequency",
                                      icon: Icons.timeline_outlined,
                                      tileData: "120")),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                ),
                                child: tile2(
                                    tileHeading: "Lead Time",
                                    icon: Icons.timelapse_rounded,
                                    tileData: "120"),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                  bottom: Insets().appPadding,
                                ),
                                child: tile2(
                                    tileHeading: "Stock Level",
                                    tileData: "140",
                                    icon: Icons.line_axis_rounded),
                              ),
                            ]
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Palette().primaryColor,
                          width: 1.3,
                        ),
                        borderRadius:
                            BorderRadius.circular(Insets().appRadius)),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: EdgeInsets.only(
                              top: Insets().appPadding / 2,
                              left: Responsive.isDesktop(context)
                                  ? Insets().appPadding
                                  : Insets().appPadding,
                              right: Insets().appPadding),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: HeadingText(
                                  size: Responsive.isDesktop(context) ? 23 : 22,
                                  value: "Stock Category Overview",
                                  fontWeight: FontWeight.w700,
                                  color: Palette().primaryColor,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.restart_alt_rounded,
                                  size: 40,
                                  color: Palette().primaryColor,
                                ),
                              )
                            ],
                          ),
                        ),
                        Flex(
                          direction: Responsive.isDesktop(context)
                              ? Axis.horizontal
                              : Axis.vertical,
                          children: [
                            if (Responsive.isDesktop(context)) ...[
                              Expanded(
                                  child: tile2(
                                tileHeading: "Total Categories",
                                tileData: "99999",
                                linkTitle: "View Full\nReport",
                                link: storeCategory(),
                              )),
                              Expanded(
                                  child: tile2(
                                      tileHeading: "Order Frequency",
                                      icon: Icons.timeline_outlined,
                                      tileData: "120")),
                              Expanded(
                                child: tile2(
                                    tileHeading: "Lead Time",
                                    icon: Icons.timelapse_rounded,
                                    tileData: "120"),
                              ),
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.only(
                                    right: Insets().appPadding * 2),
                                child: tile2(
                                    tileHeading: "Stock Level",
                                    tileData: "140",
                                    icon: Icons.line_axis_rounded),
                              )),
                            ],
                            if (!Responsive.isDesktop(context)) ...[
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                    right: Insets().appPadding,
                                  ),
                                  child: tile2(
                                    tileHeading: "Total Categories",
                                    tileData: "99999",
                                    linkTitle: "View Full\nReport",
                                    link: storeCategory(),
                                  )),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                    right: Insets().appPadding,
                                  ),
                                  child: tile2(
                                      tileHeading: "Order Frequency",
                                      icon: Icons.timeline_outlined,
                                      tileData: "120")),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                ),
                                child: tile2(
                                    tileHeading: "Lead Time",
                                    icon: Icons.timelapse_rounded,
                                    tileData: "120"),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                  bottom: Insets().appPadding,
                                ),
                                child: tile2(
                                    tileHeading: "Stock Level",
                                    tileData: "140",
                                    icon: Icons.line_axis_rounded),
                              ),
                            ]
                          ],
                        ),
                      ],
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
