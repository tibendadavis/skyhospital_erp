import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading2.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/addInterviewSchedule.scrn.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class interviewRoundDetails extends StatefulWidget {
  interviewRoundDetails({super.key});

  @override
  State<interviewRoundDetails> createState() => _interviewRoundDetailsState();
}

class _interviewRoundDetailsState extends State<interviewRoundDetails>
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
                      children: [
                        Heading2(
                          value: "John Smith Doe",
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade800,
                        ),
                        IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (_) => addInterviewSchedule());
                            },
                            icon: Icon(Icons.more_vert_rounded))
                      ],
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: TabBar(
                        indicatorColor: Palette().primaryColor,
                        isScrollable: true,
                        controller: _tabController,
                        tabs: [
                          Tab(
                              child: Heading5(
                            value: "HR Round",
                            color: Colors.grey[600],
                          )),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 180,
                      height: 40,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.check),
                              Heading5(
                                value: "Mark As Complete",
                              ),
                            ],
                          )),
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
                                    Heading5(
                                      value: "Job",
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
                                        value: "Software Developer",
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
                                      value: "Candidate Name",
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
                                        value: "John Smith Doe",
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
                                      value: "Candidate Email",
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
                                        value: "johnDoe@example.com",
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
                                      value: "Phone",
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
                                        value: "9876543210",
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
                                      value: "Interview Type",
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
                                        value: "In Person",
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
                                      value: "Start On",
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
                                        value: "15-03-2023, 01:31 pm",
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
                                      value: "Status",
                                      color: Colors.grey.shade600,
                                    ),
                                    Responsive.isDesktop(context)
                                        ? Spacer()
                                        : Offstage(),
                                    SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : size.width,
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.circle,
                                            color: Colors.yellow,
                                            size: 13,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Heading5(
                                            value: "Pending",
                                          ),
                                        ],
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
                                      value: "Comment",
                                      color: Colors.grey.shade600,
                                    ),
                                    Responsive.isDesktop(context)
                                        ? Spacer()
                                        : Offstage(),
                                    SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : size.width,
                                      child: Expanded(
                                        child: Heading5(
                                          value: " ",
                                        ),
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
                                      value: "Assigned Interviewer",
                                      color: Colors.grey.shade600,
                                    ),
                                    Responsive.isDesktop(context)
                                        ? Spacer()
                                        : Offstage(),
                                    SizedBox(
                                      width: Responsive.isDesktop(context)
                                          ? 400
                                          : size.width,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                              radius: Insets().appRadiusMid),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              HeadingText(
                                                size: 13,
                                                value: "Smith, John Doe",
                                                fontWeight: FontWeight.w600,
                                              ),
                                              HeadingText(
                                                size: 13,
                                                value: "Junior",
                                                color: Colors.grey.shade700,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
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
