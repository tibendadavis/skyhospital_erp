import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading4.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class offerletterFull extends StatefulWidget {
  offerletterFull({super.key});

  @override
  State<offerletterFull> createState() => _offerletterFullState();
}

class _offerletterFullState extends State<offerletterFull>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 1, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      child: Expanded(
          child: ListView(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(
                  top: Insets().appPadding,
                  left: Insets().appPadding,
                  right: Insets().appPadding,
                  bottom: Insets().appPadding),
              padding: EdgeInsets.only(
                  left: Insets().appPadding,
                  right: Insets().appPadding,
                  top: Insets().appGap + 2,
                  bottom: Insets().appPadding),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.circular(Insets().appRadiusMin + 4)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: 80,
                                height: 80,
                                child: FittedBox(
                                    fit: BoxFit.cover,
                                    child: Container(
                                      color: Palette()
                                          .primaryColor
                                          .withOpacity(0.6),
                                      child: Icon(Icons.logo_dev_rounded),
                                    ))),
                            SizedBox(
                              height: 20,
                            ),
                            Heading4(
                              value: "SkyHospital",
                              fontWeight: FontWeight.w600,
                              color: Colors.grey.shade700,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Heading5(
                              value: "987654321",
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade700,
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 3),
                                decoration: BoxDecoration(
                                    color: Colors.grey.shade800,
                                    borderRadius: BorderRadius.circular(5)),
                                child: Heading5(
                                  value: "EXPIRED",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              width: Responsive.isDesktop(context) ? 40 : 2,
                            ),
                            SizedBox(
                              width: 130,
                              height: 40,
                              child: ElevatedButton(
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.file_download_outlined),
                                      Heading5(
                                        value: "Download",
                                      ),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Flex(
                        direction: Responsive.isDesktop(context)
                            ? Axis.horizontal
                            : Axis.vertical,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? size.width / 2.6
                                    : size.width,
                                child: Flex(
                                  direction: Responsive.isDesktop(context)
                                      ? Axis.horizontal
                                      : Axis.vertical,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Heading4(
                                      value: "Candidate Details",
                                      color: Colors.grey.shade900,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Responsive.isDesktop(context)
                                        ? Spacer()
                                        : Offstage(),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? size.width / 2.6
                                    : size.width,
                                child: Flex(
                                  direction: Responsive.isDesktop(context)
                                      ? Axis.horizontal
                                      : Axis.vertical,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Heading5(
                                      value: "Name",
                                      color: Colors.grey.shade600,
                                    ),
                                    Responsive.isDesktop(context)
                                        ? Spacer()
                                        : Offstage(),
                                    SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : size.width,
                                      child: Heading5(
                                        value: "John Doe",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? size.width / 2.6
                                    : size.width,
                                child: Flex(
                                  direction: Responsive.isDesktop(context)
                                      ? Axis.horizontal
                                      : Axis.vertical,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Heading5(
                                      value: "Email",
                                      color: Colors.grey.shade600,
                                    ),
                                    Responsive.isDesktop(context)
                                        ? Spacer()
                                        : Offstage(),
                                    SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : size.width,
                                      child: Heading5(
                                        value: "johndoe@gmail.com",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? size.width / 2.6
                                    : size.width,
                                child: Flex(
                                  direction: Responsive.isDesktop(context)
                                      ? Axis.horizontal
                                      : Axis.vertical,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Heading4(
                                      value: "Job Details",
                                      color: Colors.grey.shade900,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Responsive.isDesktop(context)
                                        ? Spacer()
                                        : Offstage(),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? size.width / 2.6
                                    : size.width,
                                child: Flex(
                                  direction: Responsive.isDesktop(context)
                                      ? Axis.horizontal
                                      : Axis.vertical,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Heading5(
                                      value: "Job Title",
                                      color: Colors.grey.shade600,
                                    ),
                                    Responsive.isDesktop(context)
                                        ? Spacer()
                                        : Offstage(),
                                    SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : size.width,
                                      child: Heading5(
                                        value: "Software Tester",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? size.width / 2.6
                                    : size.width,
                                child: Flex(
                                  direction: Responsive.isDesktop(context)
                                      ? Axis.horizontal
                                      : Axis.vertical,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Heading5(
                                      value: "Work Experience",
                                      color: Colors.grey.shade600,
                                    ),
                                    Responsive.isDesktop(context)
                                        ? Spacer()
                                        : Offstage(),
                                    SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : size.width,
                                      child: Heading5(
                                        value: "0-1 years",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? size.width / 2.6
                                    : size.width,
                                child: Flex(
                                  direction: Responsive.isDesktop(context)
                                      ? Axis.horizontal
                                      : Axis.vertical,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Heading5(
                                      value: "Location",
                                      color: Colors.grey.shade600,
                                    ),
                                    Responsive.isDesktop(context)
                                        ? Spacer()
                                        : Offstage(),
                                    SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : size.width,
                                      child: Heading5(
                                        value: "Dar, Tanzania",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? size.width / 2.6
                                    : size.width,
                                child: Flex(
                                  direction: Responsive.isDesktop(context)
                                      ? Axis.horizontal
                                      : Axis.vertical,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Heading4(
                                      value: "Offer Details",
                                      color: Colors.grey.shade900,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    Responsive.isDesktop(context)
                                        ? Spacer()
                                        : Offstage(),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? size.width / 2.6
                                    : size.width,
                                child: Flex(
                                  direction: Responsive.isDesktop(context)
                                      ? Axis.horizontal
                                      : Axis.vertical,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Heading5(
                                      value: "Department",
                                      color: Colors.grey.shade600,
                                    ),
                                    Responsive.isDesktop(context)
                                        ? Spacer()
                                        : Offstage(),
                                    SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : size.width,
                                      child: Heading5(
                                        value: "Marketing",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? size.width / 2.6
                                    : size.width,
                                child: Flex(
                                  direction: Responsive.isDesktop(context)
                                      ? Axis.horizontal
                                      : Axis.vertical,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Heading5(
                                      value: "Salary Offered",
                                      color: Colors.grey.shade600,
                                    ),
                                    Responsive.isDesktop(context)
                                        ? Spacer()
                                        : Offstage(),
                                    SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : size.width,
                                      child: Heading5(
                                        value: "XXXXXXX",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? size.width / 2.6
                                    : size.width,
                                child: Flex(
                                  direction: Responsive.isDesktop(context)
                                      ? Axis.horizontal
                                      : Axis.vertical,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Heading5(
                                      value: "Joining Date",
                                      color: Colors.grey.shade600,
                                    ),
                                    Responsive.isDesktop(context)
                                        ? Spacer()
                                        : Offstage(),
                                    SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : size.width,
                                      child: Heading5(
                                        value: "2023-02-28",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? size.width / 2.6
                                    : size.width,
                                child: Flex(
                                  direction: Responsive.isDesktop(context)
                                      ? Axis.horizontal
                                      : Axis.vertical,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Heading5(
                                      value: "Last Date Of Acceptance",
                                      color: Colors.grey.shade600,
                                    ),
                                    Responsive.isDesktop(context)
                                        ? Spacer()
                                        : Offstage(),
                                    SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : size.width,
                                      child: Heading5(
                                        value: "2023-02-25",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                              height: Responsive.isDesktop(context) ? 0 : 20),
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ],
      )),
    );
  }
}
