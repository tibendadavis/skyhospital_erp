import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/addJobApplication.scrn.dart';

import 'package:skyhospital_erp/screens/HR/Recruitment/components/applicantNotes.scrn.dart';

import 'package:skyhospital_erp/screens/HR/Recruitment/components/resumeApplicant.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/components/skillsApplicant.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class jobApplicationDetails extends StatefulWidget {
  const jobApplicationDetails({super.key});

  @override
  State<jobApplicationDetails> createState() => _jobApplicationDetailsState();
}

class _jobApplicationDetailsState extends State<jobApplicationDetails>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(
              top: Insets().appPadding,
              left: Insets().appPadding,
              right: Insets().appPadding,
            ),
            padding: EdgeInsets.only(
                top: Insets().appPadding / 2,
                left: Insets().appPadding,
                right: Insets().appPadding,
                bottom: Insets().appPadding),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Insets().appRadiusMin + 4)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        HeadingText(
                          size: Responsive.isDesktop(context) ? 25 : 20,
                          value: "Job Application ",
                          fontWeight: FontWeight.w300,
                          color: Colors.grey.shade700,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        HeadingText(
                          size: Responsive.isDesktop(context) ? 25 : 20,
                          value: "John Doe",
                          fontWeight: FontWeight.w700,
                          color: Colors.grey.shade800,
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (_) => addJobApplication());
                        },
                        icon: Icon(Icons.more_vert_rounded))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Flex(
                  direction: Responsive.isDesktop(context)
                      ? Axis.horizontal
                      : Axis.vertical,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(radius: 80),
                    SizedBox(height: Responsive.isDesktop(context) ? 0 : 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: Responsive.isDesktop(context)
                              ? size.width / 1.6
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
                                    ? 750
                                    : size.width,
                                child: Heading5(
                                  value: "Developer",
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
                              ? size.width / 1.6
                              : size.width,
                          child: Flex(
                            direction: Responsive.isDesktop(context)
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Heading5(
                                value: "Applicant Email",
                                color: Colors.grey.shade600,
                              ),
                              Responsive.isDesktop(context)
                                  ? Spacer()
                                  : Offstage(),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? 750
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
                              ? size.width / 1.6
                              : size.width,
                          child: Flex(
                            direction: Responsive.isDesktop(context)
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Heading5(
                                value: "Applicant Phone",
                                color: Colors.grey.shade600,
                              ),
                              Responsive.isDesktop(context)
                                  ? Spacer()
                                  : Offstage(),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? 750
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
                              ? size.width / 1.6
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
                                    ? 750
                                    : size.width,
                                child: Heading5(
                                  value: "Dar, Tanzania",
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
                              ? size.width / 1.6
                              : size.width,
                          child: Flex(
                            direction: Responsive.isDesktop(context)
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Heading5(
                                value: "Date Of Birth",
                                color: Colors.grey.shade600,
                              ),
                              Responsive.isDesktop(context)
                                  ? Spacer()
                                  : Offstage(),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? 750
                                    : size.width,
                                child: Heading5(
                                  value: "05-02-1999",
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
                              ? size.width / 1.6
                              : size.width,
                          child: Flex(
                            direction: Responsive.isDesktop(context)
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Heading5(
                                value: "Gender",
                                color: Colors.grey.shade600,
                              ),
                              Responsive.isDesktop(context)
                                  ? Spacer()
                                  : Offstage(),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? 750
                                    : size.width,
                                child: Heading5(
                                  value: "Male",
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: Responsive.isDesktop(context)
                              ? size.width / 1.6
                              : size.width,
                          child: Flex(
                            direction: Responsive.isDesktop(context)
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Heading5(
                                value: "Total Experience",
                                color: Colors.grey.shade600,
                              ),
                              Responsive.isDesktop(context)
                                  ? Spacer()
                                  : Offstage(),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? 750
                                    : size.width,
                                child: Heading5(
                                  value: "1-2 Years",
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
                              ? size.width / 1.6
                              : size.width,
                          child: Flex(
                            direction: Responsive.isDesktop(context)
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Heading5(
                                value: "Current Location",
                                color: Colors.grey.shade600,
                              ),
                              Responsive.isDesktop(context)
                                  ? Spacer()
                                  : Offstage(),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? 750
                                    : size.width,
                                child: Heading5(
                                  value: "Tanzania",
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
                              ? size.width / 1.6
                              : size.width,
                          child: Flex(
                            direction: Responsive.isDesktop(context)
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Heading5(
                                value: "Notice Period",
                                color: Colors.grey.shade600,
                              ),
                              Responsive.isDesktop(context)
                                  ? Spacer()
                                  : Offstage(),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? 750
                                    : size.width,
                                child: Heading5(
                                  value: "15 Days",
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
                              ? size.width / 1.6
                              : size.width,
                          child: Flex(
                            direction: Responsive.isDesktop(context)
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Heading5(
                                value: "Applied At",
                                color: Colors.grey.shade600,
                              ),
                              Responsive.isDesktop(context)
                                  ? Spacer()
                                  : Offstage(),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? 750
                                    : size.width,
                                child: Heading5(
                                  value: "23-02-2023",
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
                              ? size.width / 1.6
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
                                    ? 750
                                    : size.width,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.circle,
                                      color: Colors.blue,
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
                              ? size.width / 1.6
                              : size.width,
                          child: Flex(
                            direction: Responsive.isDesktop(context)
                                ? Axis.horizontal
                                : Axis.vertical,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Heading5(
                                value: "Cover Letter",
                                color: Colors.grey.shade600,
                              ),
                              Responsive.isDesktop(context)
                                  ? Spacer()
                                  : Offstage(),
                              SizedBox(
                                width: Responsive.isDesktop(context)
                                    ? 750
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
                      ],
                    ),
                  ],
                ),
              ],
            )),
        Container(
          margin: EdgeInsets.only(left: 25),
          alignment: Alignment.centerLeft,
          child: TabBar(
            indicatorColor: Palette().primaryColor,
            isScrollable: true,
            controller: _tabController,
            tabs: [
              Tab(
                  child: Heading5(
                value: "Skills",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Applicant Notes",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Resume",
                color: Colors.grey[600],
              )),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: skillsApplicant())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: applicantNote())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: resumeApplicant())),
            ],
          ),
        ),
      ],
    );
  }
}
