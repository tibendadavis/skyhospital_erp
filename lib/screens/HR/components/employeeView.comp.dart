import 'package:flutter/material.dart';
import 'package:skyhospital_erp/screens/HR/components/employeeProfile.comp.dart';
import 'package:skyhospital_erp/components/heading5.dart';
import 'package:skyhospital_erp/components/heading_text.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/HR/appreciation.scrn.dart';
import 'package:skyhospital_erp/screens/HR/components/emergencyContacts.scrn.dart';
import 'package:skyhospital_erp/screens/HR/components/employeeActivity.scrn.dart';
import 'package:skyhospital_erp/screens/HR/components/employeeDocuments.scrn.dart';
import 'package:skyhospital_erp/screens/HR/components/employeeTasks.scrn.dart';
import 'package:skyhospital_erp/screens/HR/components/leaveQuota.scrn.dart';
import 'package:skyhospital_erp/screens/HR/leaves.scrn.dart';
import 'package:skyhospital_erp/screens/System%20Configuration/userRoles.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

class employeeView extends StatefulWidget {
  const employeeView({super.key});

  @override
  State<employeeView> createState() => _employeeViewState();
}

class _employeeViewState extends State<employeeView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 9, vsync: this);
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
            value: "John Doe",
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
                value: "Tasks",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Leaves",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Leaves Quota",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Documents",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Emergency Contacts",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Appreciation",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Activity",
                color: Colors.grey[600],
              )),
              Tab(
                  child: Heading5(
                value: "Permissions",
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
                  child: Container(child: employeeProfile())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: employeeTasks())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(
                      child: leaves(
                    heading: false,
                  ))),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: leaveQuota())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: employeeDocument())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: emergencyContact())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.4),
                  child: Container(
                      child: appreciation(
                    heading: false,
                  ))),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(child: employeeActivity())),
              Material(
                  elevation: 0,
                  color: Colors.white.withOpacity(0.1),
                  child: Container(
                      child: userRoles(
                    heading: false,
                  ))),
            ],
          ),
        ),
      ],
    );
  }
}
