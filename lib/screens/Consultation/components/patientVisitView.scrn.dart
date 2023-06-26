import 'package:flutter/material.dart';
import 'package:skyhospital_erp/screens/Consultation/components/currentMedication.comp.dart';
import 'package:skyhospital_erp/screens/Consultation/components/diagnosis.comp.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/screens/Consultation/components/investigationProcedure.comp.dart';
import 'package:skyhospital_erp/screens/Consultation/components/patientReferrals.comp.dart';
import 'package:skyhospital_erp/screens/Consultation/components/patientVitals.comp.dart';
import 'package:skyhospital_erp/screens/Consultation/components/prescriptionMedicine.comp.dart';
import 'package:skyhospital_erp/screens/Consultation/components/presentingComplaint.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class patientVisitView extends StatefulWidget {
  const patientVisitView({super.key});

  @override
  State<patientVisitView> createState() => _patientVisitViewState();
}

class _patientVisitViewState extends State<patientVisitView>
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
                value: "Vitals",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Current Medication",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Presenting Complaint",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Diagnosis",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Investigation/Procedure",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Prescription Medicine",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Referrals",
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
                  child: Container(child: patientVitals())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: currentMedication())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: presentingComplaint())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: diagnosis())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: investigationProcedure())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: prescriptionMedicine())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: patientReferrals())),
            ],
          ),
        ),
      ],
    );
  }
}
