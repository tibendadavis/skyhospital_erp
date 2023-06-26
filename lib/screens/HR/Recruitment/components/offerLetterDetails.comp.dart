import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';

import 'package:skyhospital_erp/screens/HR/Recruitment/components/offerAdditional.scrn.dart';

import 'package:skyhospital_erp/screens/HR/Recruitment/components/offerLetterHistory.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/components/offerletterFull.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class offerLetterDetails extends StatefulWidget {
  const offerLetterDetails({super.key});

  @override
  State<offerLetterDetails> createState() => _offerLetterDetailsState();
}

class _offerLetterDetailsState extends State<offerLetterDetails>
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
            value: "Offer Letters",
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
                value: "Additional Information",
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
                  child: Container(child: offerletterFull())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: offerAdditional())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: offerHistory())),
            ],
          ),
        ),
      ],
    );
  }
}
