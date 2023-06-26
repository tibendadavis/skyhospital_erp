import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';

import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/Misc/doctorConsultation.scrn.dart';
import 'package:skyhospital_erp/screens/OutPatient%20Management/patients.scrn.dart';
import 'package:skyhospital_erp/screens/Misc/theater.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class generalReport extends StatefulWidget {
  generalReport({super.key});

  @override
  State<generalReport> createState() => _generalReportState();
}

class _generalReportState extends State<generalReport> {
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
                            size: Responsive.isDesktop(context) ? 27 : 25,
                            value: "General Reports",
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
                                  value: "Patients Overview",
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
                                tileHeading: "Total Patients",
                                tileData: "99999",
                                linkTitle: "View Full\nReport",
                                link: patients(),
                              )),
                              Expanded(
                                  child: tile2(
                                tileHeading: "Total Male Patients",
                                tileData: "120",
                                icon: Icons.person,
                              )),
                              Expanded(
                                child: tile2(
                                  tileHeading: "Total Female Patients",
                                  tileData: "120",
                                  icon: Icons.person,
                                ),
                              ),
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.only(
                                    right: Insets().appPadding * 2),
                                child: tile2(
                                  tileHeading: "Returned Patients",
                                  tileData: "140",
                                  icon: Icons.person,
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
                                    tileHeading: "Total Patients",
                                    tileData: "99999",
                                    linkTitle: "View Full\nReport",
                                    link: patients(),
                                  )),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                    right: Insets().appPadding,
                                  ),
                                  child: tile2(
                                    tileHeading: "Total Male Patients",
                                    tileData: "120",
                                    icon: Icons.person,
                                  )),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                ),
                                child: tile2(
                                  tileHeading: "Total Female Patients",
                                  tileData: "120",
                                  icon: Icons.person,
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                  bottom: Insets().appPadding,
                                ),
                                child: tile2(
                                  tileHeading: "Returned Patients",
                                  tileData: "140",
                                  icon: Icons.person,
                                ),
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
                                  value: "Surgery Overview",
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
                                tileHeading: "Total Surgery",
                                tileData: "999",
                                linkTitle: "View Full\nReport",
                                link: theater(),
                              )),
                              Expanded(
                                  child: tile2(
                                tileHeading: "Performed Surgery",
                                tileData: "120",
                                icon: Icons.done_all,
                              )),
                              Expanded(
                                child: tile2(
                                    tileHeading: "Pending Surgery",
                                    tileData: "120",
                                    icon: Icons.pending_actions_rounded),
                              ),
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.only(
                                    right: Insets().appPadding * 2),
                                child: tile2(
                                  tileHeading: "Payments (Tzs)",
                                  tileData: "140,000,000",
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
                                    tileHeading: "Total Surgery",
                                    tileData: "999",
                                    linkTitle: "View Full\nReport",
                                    link: patients(),
                                  )),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                    right: Insets().appPadding,
                                  ),
                                  child: tile2(
                                      tileHeading: "Performed Surgery",
                                      icon: Icons.done_all,
                                      tileData: "120")),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                ),
                                child: tile2(
                                    tileHeading: "Pending Surgery",
                                    icon: Icons.pending_actions_rounded,
                                    tileData: "120"),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                  bottom: Insets().appPadding,
                                ),
                                child: tile2(
                                  tileHeading: "Payments",
                                  tileData: "140",
                                ),
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
                                  value: "Doctor's Consultation Overview",
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
                                tileHeading: "Total Consultations",
                                tileData: "99999",
                                linkTitle: "View Full\nReport",
                                link: doctorConsultation(),
                              )),
                              Expanded(
                                  child: tile2(
                                      tileHeading: "Top Performing Doctor",
                                      icon: Icons.local_hospital_rounded,
                                      tileData: "120")),
                              Expanded(
                                child: tile2(
                                    tileHeading: "Appointments",
                                    icon: Icons.schedule_rounded,
                                    tileData: "120"),
                              ),
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.only(
                                    right: Insets().appPadding * 2),
                                child: tile2(
                                    icon: Icons.output_rounded,
                                    tileHeading: "Referrals",
                                    tileData: "140"),
                              )),
                            ],
                            if (!Responsive.isDesktop(context)) ...[
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                    right: Insets().appPadding,
                                  ),
                                  child: tile2(
                                    tileHeading: "Total Consultations",
                                    tileData: "99999",
                                    linkTitle: "View Full\nReport",
                                    link: doctorConsultation(),
                                  )),
                              Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(
                                    right: Insets().appPadding,
                                  ),
                                  child: tile2(
                                      tileHeading: "Top Performing Doctor",
                                      icon: Icons.local_hospital_rounded,
                                      tileData: "120")),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                ),
                                child: tile2(
                                    tileHeading: "Appointments",
                                    icon: Icons.schedule_rounded,
                                    tileData: "120"),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.only(
                                  right: Insets().appPadding,
                                  bottom: Insets().appPadding,
                                ),
                                child: tile2(
                                    tileHeading: "Referrals",
                                    icon: Icons.output_rounded,
                                    tileData: "140"),
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
