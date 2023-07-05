import 'dart:math';

import 'package:flutter/material.dart';

import 'package:skyhospital_erp/screens/InPatient%20Management/components/bedStatus.comp.dart';
import 'package:skyhospital_erp/components/downloadBar.comp.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/components/searchBar.comp.dart';
import 'package:skyhospital_erp/components/searchInputOptions.comp.dart';
import 'package:skyhospital_erp/components/tile2.comp.dart';
import 'package:skyhospital_erp/components/tile3.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/InPatient%20Management/addBed.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class bedStatus extends StatefulWidget {
  const bedStatus({super.key});

  @override
  State<bedStatus> createState() => _bedStatusState();
}

class _bedStatusState extends State<bedStatus> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    bool randomBool() {
      Random random = Random();
      return random.nextBool();
    }

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
              value: "Bed Status",
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
                  icon: Icons.bed,
                  link: addBed(),
                  linkTitle: "New Bed",
                )),
                Expanded(
                    child: tile2(tileHeading: "Available Beds", tileData: "0")),
                Expanded(
                    child: tile2(tileHeading: "Taken Beds", tileData: "0")),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(right: Insets().appPadding * 2),
                  child: tile2(tileHeading: "Payments", tileData: "0"),
                ))
              ],
              if (!Responsive.isDesktop(context)) ...[
                Container(
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                      top: Insets().appPadding / 2,
                    ),
                    child: tile3(
                      icon: Icons.bed,
                      link: addBed(),
                      linkTitle: "New Bed",
                    )),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child:
                        tile2(tileHeading: "Available Beds", tileData: "24")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Taken Beds", tileData: "0")),
                Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(
                      right: Insets().appPadding,
                    ),
                    child: tile2(tileHeading: "Payments", tileData: "0")),
              ]
            ],
          ),
          searchBar(
              title: "Search for Ward",
              opt1: searchInputOptions(
                title: "Ward",
                opt2: "Male Ward (Medical)",
              ),
              opt2: searchInputOptions(
                title: "Floor",
                opt2: "GROUND FLOOR",
              )),
          downloadBar(
            results: '2',
          ),
          Expanded(
            child: ListView(children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                margin: EdgeInsets.only(
                  left:
                      Responsive.isDesktop(context) ? Insets().appPadding : 13,
                  right:
                      Responsive.isDesktop(context) ? Insets().appPadding : 13,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Insets().appGap + 6)),
                child: SizedBox(
                  width: double.infinity,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Heading5(
                                    value: "Floor : GROUND FLOOR",
                                    fontWeight: FontWeight.w700,
                                    color: Colors.grey.shade800,
                                  ),
                                  Heading5(
                                      value: "Ward : Male Ward (Medical)",
                                      color: Colors.grey.shade800,
                                      fontWeight: FontWeight.w700),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.hotel_sharp,
                                        color: Colors.redAccent,
                                      ),
                                      Heading5(
                                        value: "Taken Bed",
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey.shade600,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.bed,
                                        color: Colors.grey.shade700,
                                      ),
                                      Heading5(
                                        value: "Empty Bed",
                                        fontWeight: FontWeight.w700,
                                        color: Colors.grey.shade600,
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Wrap(
                            children: [
                              bedStatusComp(
                                bedNo: "MM01",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM02",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM03",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM04",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM05",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM06",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM07",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM08",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM09",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM10",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM11",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM12",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM12",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM12",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM12",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM12",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM12",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM12",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM12",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM12",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM12",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM12",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM12",
                                status: randomBool(),
                              ),
                              bedStatusComp(
                                bedNo: "MM12",
                                status: randomBool(),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ),
            ]),
          )
        ],
      )),
    );
  }
}
