import 'package:flutter/material.dart';
import 'package:skyhospital_erp/screens/Medical%20Records/components/diagnosisRecords.comp.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/screens/Medical%20Records/components/healthIssues.comp.dart';
import 'package:skyhospital_erp/screens/Medical%20Records/components/medications.comp.dart';
import 'package:skyhospital_erp/screens/Medical%20Records/components/patientDocument.comp.dart';
import 'package:skyhospital_erp/screens/Medical%20Records/components/socialHistory.comp.dart';
import 'package:skyhospital_erp/screens/Medical%20Records/components/testResults.comp.dart';
import 'package:skyhospital_erp/screens/Medical%20Records/components/visitHistory.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class patientMedicalRecords extends StatefulWidget {
  const patientMedicalRecords({super.key});

  @override
  State<patientMedicalRecords> createState() => _patientMedicalRecordsState();
}

class _patientMedicalRecordsState extends State<patientMedicalRecords>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 7, vsync: this);
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
            value: "John Snow",
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
                value: "Visit History",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Health Issues",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Diagnosis",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Medications",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Test Results",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Social History",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Patient Document",
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
                  child: Container(child: visitHistory())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: healthIssues())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: diagnosisRecords())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: medications())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: testResults())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: socialHistory())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: patientDocument())),
            ],
          ),
        ),
      ],
    );
  }
}
