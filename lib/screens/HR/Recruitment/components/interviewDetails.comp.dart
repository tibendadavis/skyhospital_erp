import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/screens/HR/Recruitment/components/interviewEvaluation.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/components/interviewFiles.scrn.dart';
import 'package:skyhospital_erp/screens/Misc/interviewHistory.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/components/interviewRoundDetails.scrn.dart';

import 'package:skyhospital_erp/theme/design.theme.dart';

class interviewDetails extends StatefulWidget {
  const interviewDetails({super.key});

  @override
  State<interviewDetails> createState() => _interviewDetailsState();
}

class _interviewDetailsState extends State<interviewDetails>
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
            value: "Interview Details",
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
                value: "Details",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Evaluations",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Files",
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
                  child: Container(child: interviewRoundDetails())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: interviewEvaluation())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: interviewFiles())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: interviewHistory())),
            ],
          ),
        ),
      ],
    );
  }
}
