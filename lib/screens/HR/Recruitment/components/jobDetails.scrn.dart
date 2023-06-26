import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/components/jobHistory.comp.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/components/jobProfile.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/interviewSchedule.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/jobApplication.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/offerLetter.scrn.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class jobDetails extends StatefulWidget {
  const jobDetails({super.key});

  @override
  State<jobDetails> createState() => _jobDetailsState();
}

class _jobDetailsState extends State<jobDetails>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.only(
              top: 15,
              left: Responsive.isDesktop(context)
                  ? Insets().appPadding * 2
                  : Insets().appPadding,
              right: Insets().appGap),
          child: HeadingText(
            size: Responsive.isDesktop(context) ? 27 : 23,
            value: "Job Details",
            fontWeight: FontWeight.w700,
            color: Colors.grey.shade800,
          ),
        ),
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
                value: "Profile",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Candidate",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Interview",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Offer Letter",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "History",
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
                  child: Container(child: jobProfile())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(
                      child: jobApplication(
                    heading: false,
                  ))),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(
                      child: interviewSchedule(
                    heading: false,
                  ))),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(
                      child: offerLetter(
                    heading: false,
                  ))),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: jobHistory())),
            ],
          ),
        ),
      ],
    );
  }
}
