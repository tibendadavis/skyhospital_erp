import 'package:flutter/material.dart';
import 'package:skyhospital_erp/screens/Medical%20Records/components/diagnosisRecords.comp.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/screens/Medical%20Records/components/medications.comp.dart';
import 'package:skyhospital_erp/screens/Consultation/components/prescriptionMedicine.comp.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class pharmacyManagement extends StatefulWidget {
  const pharmacyManagement({super.key});

  @override
  State<pharmacyManagement> createState() => _pharmacyManagementState();
}

class _pharmacyManagementState extends State<pharmacyManagement>
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
                value: "Prescriptions",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Medications",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Dispensing",
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
                  child: Container(child: prescriptionMedicine())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: medications())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: diagnosisRecords())),
            ],
          ),
        ),
      ],
    );
  }
}
