import 'package:flutter/material.dart';
import 'package:skyhospital_erp/components/app_drawer/drawer_item.comp.dart';
import 'package:skyhospital_erp/controllers/globalVariables.dart';
import 'package:skyhospital_erp/controllers/responsive.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/candidateDatabase.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/careersite.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/interviewSchedule.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/jobApplication.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/offerLetter.scrn.dart';
import 'package:skyhospital_erp/screens/HR/appreciation.scrn.dart';
import 'package:skyhospital_erp/screens/HR/attendance.scrn.dart';
import 'package:skyhospital_erp/screens/InPatient%20Management/bedStatus.scrn.dart';
import 'package:skyhospital_erp/screens/Consultation/clinicalManagement.scrn.dart';
import 'package:skyhospital_erp/screens/HR/department.scrn.dart';
import 'package:skyhospital_erp/screens/HR/designation.scrn.dart';
import 'package:skyhospital_erp/screens/Emergency/emergency.scrn.dart';
import 'package:skyhospital_erp/screens/Payroll%20Management/employeeBonus.scrn.dart';
import 'package:skyhospital_erp/screens/Payroll%20Management/employeeSalary.scrn.dart';
import 'package:skyhospital_erp/screens/HR/employees.scrn.dart';
import 'package:skyhospital_erp/screens/Reports%20&%20Statistics/generalReport.scrn.dart';
import 'package:skyhospital_erp/screens/HR/holiday.scrn.dart';
import 'package:skyhospital_erp/screens/Home/homePage.scrn.dart';
import 'package:skyhospital_erp/screens/System%20Configuration/hospitalDetails.scrn.dart';
import 'package:skyhospital_erp/screens/Accounts%20&%20Revenue/inventoryBilling.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/jobs.scrn.dart';
import 'package:skyhospital_erp/screens/Laboratory/laboratory.scrn.dart';
import 'package:skyhospital_erp/screens/HR/leaves.scrn.dart';
import 'package:skyhospital_erp/screens/Medical%20Records/medicalRecords.scrn.dart';
import 'package:skyhospital_erp/screens/System%20Configuration/methodsOfPayment.scrn.dart';
import 'package:skyhospital_erp/screens/InPatient%20Management/patientAdmission.scrn.dart';
import 'package:skyhospital_erp/screens/Accounts%20&%20Revenue/patientBilling.scrn.dart';
import 'package:skyhospital_erp/screens/OutPatient%20Management/patients.scrn.dart';
import 'package:skyhospital_erp/screens/Misc/payments.scrn.dart';
import 'package:skyhospital_erp/screens/Payroll%20Management/payroll.scrn.dart';
import 'package:skyhospital_erp/screens/Pharmacy%20Management/pharmacy.scrn.dart';
import 'package:skyhospital_erp/screens/Philebotomy/phlebotomy.scrn.dart';
import 'package:skyhospital_erp/screens/Inventory%20&%20Assets/purchaseOrder.scrn.dart';
import 'package:skyhospital_erp/screens/Radiology/radiology.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/recruitmentDashboard.scrn.dart';
import 'package:skyhospital_erp/screens/Reports%20&%20Statistics/referral.sReport.scrn.dart';
import 'package:skyhospital_erp/screens/System%20Configuration/regionDistrict.scrn.dart';
import 'package:skyhospital_erp/screens/Reports%20&%20Statistics/stockReport.scrn.dart';
import 'package:skyhospital_erp/screens/Inventory%20&%20Assets/store.scrn.dart';
import 'package:skyhospital_erp/screens/Inventory%20&%20Assets/storeItem.scrn.dart';
import 'package:skyhospital_erp/screens/Inventory%20&%20Assets/supplier.scrn.dart';
import 'package:skyhospital_erp/screens/System%20Configuration/userRoles.scrn.dart';
import 'package:skyhospital_erp/theme/design.theme.dart';

// ignore: must_be_immutable
class skyHospitalDrawer extends StatefulWidget {
  final double? size;

  final bool? selected;
  final Function? onTap;
  List<Map>? items;
  skyHospitalDrawer(
      {super.key, this.size, this.onTap, this.selected, this.items});

  @override
  State<skyHospitalDrawer> createState() => _skyHospitalDrawerState();
}

class _skyHospitalDrawerState extends State<skyHospitalDrawer>
    with AutomaticKeepAliveClientMixin {
  late double _drawerSize;
  ScrollController scrollCont = ScrollController();
  var test = false;
  //ScrollController globalData.scrollController = ScrollController();

  var selected;

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
  @override
  void initState() {
    _drawerSize = widget.size!;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // jump to the saved position when the widget is built
      globalData.scrollCont.animateTo(
          curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(milliseconds: 1200),
          globalData.drawerPos);
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();

    globalData.scrollCont.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    var size = MediaQuery.of(context).size;

    late List<Map> items = [
      {
        "size": widget.size!,
        "link": homePage(),
        "value": "Home",
        "iconData": Icons.web,
        "selected": globalData.selected[0],
        "route": "/home",
      },
      {
        "size": widget.size!,
        "value": "Human Resource",
        "iconData": Icons.group,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[1],
        "submenu1": [
          "Employees",
          employees(),
          Icons.supervised_user_circle_sharp,
          "/HR/employee"
        ],
        "submenu2": [
          "Leaves",
          leaves(),
          Icons.leave_bags_at_home_rounded,
          "/HR/leaves"
        ],
        "submenu3": ["Attendance", attendance(), Icons.check, "/HR/attendance"],
        "submenu4ex": "Recruitment",
        "submenu4.1": [
          "Dashboard",
          recruitmentDashboard(),
          Icons.dashboard,
          "/HR/recruitment/dashboard"
        ],
        "submenu4.2": ["Jobs", jobs(), Icons.work, "/HR/recruitment/jobs"],
        "submenu4.3": [
          "Job Applications",
          jobApplication(),
          Icons.settings_applications_rounded,
          "/HR/recruitment/jobApplications"
        ],
        "submenu4.4": [
          "Interview Schedule",
          interviewSchedule(),
          Icons.schedule_rounded,
          "/HR/recruitment/interviewSchedule"
        ],
        "submenu4.5": [
          "Offer Letters",
          offerLetter(),
          Icons.label_important_rounded,
          "/HR/recruitment/offerLetter"
        ],
        "submenu4.6": [
          "Candidate Database",
          candidateDB(),
          Icons.data_object_rounded,
          "/HR/recruitment/candidateDatabase"
        ],
        "submenu4.7": [
          "Career Site",
          careersite(),
          Icons.web,
          "/HR/recruitment/career-site"
        ],
        "submenu5": [
          "Holiday",
          holiday(),
          Icons.holiday_village_rounded,
          "/HR/holiday"
        ],
        "submenu6": [
          "Designation",
          designation(),
          Icons.person,
          "/HR/designation"
        ],
        "submenu7": [
          "Department",
          department(),
          Icons.build_circle_rounded,
          "/HR/department"
        ],
        "submenu8": [
          "Appreciation",
          appreciation(),
          Icons.badge_rounded,
          "/HR/appreciation"
        ],
      },
      {
        "size": widget.size!,
        "link": patients(),
        "value": "Out-Patient Management",
        "iconData": Icons.groups_rounded,
        "selected": globalData.selected[2],
        "route": "/outPatientManagement"
      },
      {
        "size": widget.size!,
        "value": "In-Patient Management",
        "iconData": Icons.local_hotel_sharp,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[3],
        "submenu1": [
          "Patient Registration",
          patients(),
          Icons.person,
          "/inPatientManagement/patientRegistration"
        ],
        "submenu2": [
          "Patient Admission",
          patientAdmission(),
          Icons.person_add_alt,
          "/inPatientManagement/patientAdmission"
        ],
        "submenu3": [
          "Bed Status",
          bedStatus(),
          Icons.bed,
          "/inPatientManagement/bedStatus"
        ],
      },
      {
        "size": widget.size!,
        "link": emergency(),
        "value": "Emergency",
        "iconData": Icons.emergency_outlined,
        "selected": globalData.selected[4],
        "route": "/emergency"
      },
      {
        "size": widget.size!,
        "link": clinicalManagement(),
        "value": "Consultation",
        "iconData": Icons.local_hospital_rounded,
        "selected": globalData.selected[5],
        "route": "/consultation"
      },
      {
        "size": widget.size!,
        "link": medicalRecords(),
        "value": "Medical Records",
        "iconData": Icons.receipt_long_rounded,
        "selected": globalData.selected[6],
        "route": "/medicalrecords"
      },
      {
        "size": widget.size!,
        "link": phlebotomy(),
        "value": "Phlebotomy",
        "iconData": Icons.thermostat_sharp,
        "selected": globalData.selected[7],
        "route": "/phlebotomy"
      },
      {
        "size": widget.size!,
        "link": laboratory(),
        "value": "Laboratory",
        "iconData": Icons.medical_services_outlined,
        "selected": globalData.selected[8],
        "route": "/laboratory"
      },
      {
        "size": widget.size!,
        "link": radiology(),
        "value": "Radiology",
        "iconData": Icons.scanner_rounded,
        "selected": globalData.selected[9],
        "route": "/radix"
      },
      {
        "size": widget.size!,
        "link": pharmacy(),
        "value": "Pharmacy Management",
        "iconData": Icons.local_pharmacy_rounded,
        "selected": globalData.selected[10],
        "route": "/pharmacyManagement"
      },
      {
        "size": widget.size!,
        "value": "Accounts & Revenue",
        "iconData": Icons.attach_money_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[11],
        "submenu1": [
          "Patient Billing",
          patientBilling(),
          Icons.attach_money_rounded,
          "/accounts&revenue/patientBilling"
        ],
        "submenu2": [
          "Inventory Billing",
          inventoryBilling(),
          Icons.attach_money_rounded,
          "/accounts&revenue/inventoryBilling"
        ],
        // "submenu3": [
        //   "Bed Status",
        //   bedStatus(),
        //   Icons.bed,
        //    "/accounts&revenue/inventoryBilling"
        // ],
      },
      {
        "size": widget.size!,
        "value": "Payroll Management",
        "iconData": Icons.payment_rounded,
        "selected": globalData.selected[12],
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "submenu1": [
          "Employee Salary",
          employeeSalary(),
          Icons.payment_rounded,
          "/payroll/employeeSalary"
        ],
        "submenu2": [
          "Employee Bonus",
          employeeBonus(),
          Icons.payment_rounded,
          "/payroll/employeeBonus"
        ],
        "submenu3": [
          "Payroll",
          payroll(),
          Icons.payment_rounded,
          "/payroll/payroll"
        ],
      },
      {
        "size": widget.size!,
        "value": "Inventory & Assets",
        "iconData": Icons.inventory_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[13],
        "submenu1": [
          "Store",
          stores(),
          Icons.inventory_rounded,
          "/inventory/store"
        ],
        "submenu2": [
          "Stock Item",
          storeItem(),
          Icons.inventory_rounded,
          "/inventory/item"
        ],
        "submenu3": [
          "Supplier",
          supplier(),
          Icons.inventory_rounded,
          "/inventory/supplier"
        ],
        "submenu4": [
          "Purchase Order",
          purchaseOrder(),
          Icons.inventory_rounded,
          "/inventory/purchaseOrder"
        ],
      },
      {
        "size": widget.size!,
        "value": "Reports & Statistics",
        "iconData": Icons.auto_graph_rounded,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[14],
        "submenu1": [
          "General Reports",
          generalReport(),
          Icons.auto_graph_rounded,
          "/reports/general"
        ],
        "submenu4": [
          "Payment Report",
          payments(),
          Icons.auto_graph_rounded,
          "/reports/payment"
        ],
        "submenu5": [
          "Pharmacy Report",
          pharmacy(),
          Icons.auto_graph_rounded,
          "/reports/pharmacy"
        ],
        "submenu2": [
          "Stock Report",
          stockReport(),
          Icons.auto_graph_rounded,
          "/reports/stock"
        ],
        "submenu3": [
          "Referral Report",
          referralreport(),
          Icons.auto_graph_rounded,
          "/reports/referrals"
        ],
      },
      {
        "size": widget.size!,
        "value": "System Configuration",
        "iconData": Icons.settings,
        "iconData2": Icons.keyboard_arrow_down_rounded,
        "selected": globalData.selected[15],
        "submenu1": [
          "Roles & Privileges",
          userRoles(),
          Icons.admin_panel_settings_rounded,
          "/system/roles"
        ],
        "submenu2": [
          "Methods of Payment",
          methodsOfPayment(),
          Icons.payment_rounded,
          "/system/paymentmethod"
        ],
        "submenu3": [
          "Region / Districts",
          regionDistricts(),
          Icons.place_rounded,
          "/system/region"
        ],
        "submenu4": [
          "Hospital Details",
          hospitalDetails(),
          Icons.details_rounded,
          "/system/details",
        ],
      },
    ];

    // {
    //   "size": widget.size!,
    //   "value": "Appointments",
    //   "iconData": Icons.date_range_rounded,
    //   "iconData2": Icons.keyboard_arrow_down_rounded,
    //   "selected": globalData.selected[4],
    //   "submenu1": [
    //     "Appointment Categories",
    //     appointmentCategory(),
    //     Icons.category_rounded,
    //     "/appointments/Categories"
    //   ],
    //   "submenu2": [
    //     "Booking Settings",
    //     bookingSettings(),
    //     Icons.settings,
    //     "/appointments/bookingSetting"
    //   ],
    //   "submenu3": [
    //     "Appointment Scheduling",
    //     appointmentSchedule(),
    //     Icons.schedule_rounded,
    //     "/appointments/Scheduling"
    //   ],
    //   "submenu4": [
    //     "Reminders",
    //     Reminders(),
    //     Icons.notifications_on_rounded,
    //     "/appointments/reminders"
    //   ],
    //   "submenu5": [
    //     "Waiting List Management",
    //     waitList(),
    //     Icons.list_alt_rounded,
    //     "/appointments/waitingList"
    //   ],
    // },
    // {
    //   "size": widget.size!,
    //   "link": laboratory(),
    //   "value": "Laboratory",
    //   "iconData": Icons.science_rounded,
    //   "selected": globalData.selected[5],
    //   "route": "/laboratory"
    // },
    // {
    //   "size": widget.size!,
    //   "link": ward(),
    //   "value": "Ward",
    //   "iconData": Icons.room_service_rounded,
    //   "selected": globalData.selected[6],
    //   "route": "/ward"
    // },
    // {
    //   "size": widget.size!,
    //   "link": theater(),
    //   "value": "Theater",
    //   "iconData": Icons.hotel_rounded,
    //   "selected": globalData.selected[7],
    //   "route": "/theater"
    // },
    // {
    //   "size": widget.size!,
    //   "link": visualAcuityTest(),
    //   "value": "Visual Acuity Testing",
    //   "iconData": Icons.visibility_rounded,
    //   "selected": globalData.selected[8],
    //   "route": "/visualAcuityTesting"
    // },
    // {
    //   "size": widget.size!,
    //   "link": doctorConsultation(),
    //   "value": "Doctor's Consultation",
    //   "iconData": Icons.handshake_rounded,
    //   "selected": globalData.selected[9],
    //   "route": "/doctorConsultation"
    // },
    // {
    //   "size": widget.size!,
    //   "link": optometry(),
    //   "value": "Optometry",
    //   "iconData": Icons.device_thermostat_rounded,
    //   "selected": globalData.selected[10],
    //   "route": "/optometry"
    // },
    // {
    //   "size": widget.size!,
    //   "link": pharmacy(),
    //   "value": "Pharmacy",
    //   "iconData": Icons.local_pharmacy_rounded,
    //   "selected": globalData.selected[11],
    //   "route": "/pharmacy"
    // },
    // {
    //   "size": widget.size!,
    //   "link": payments(),
    //   "value": "Payments",
    //   "iconData": Icons.payments_rounded,
    //   "selected": globalData.selected[12],
    //   "route": "/payments"
    // },

    return Drawer(
      elevation: 0,
      child: Container(
        width: widget.size,
        decoration: BoxDecoration(
            color: Palette().primaryColor,
            borderRadius: BorderRadius.only(
                topRight: Responsive.isDesktop(context)
                    ? Radius.circular(0)
                    : Radius.circular(0),
                bottomRight: Responsive.isDesktop(context)
                    ? Radius.circular(0)
                    : Radius.circular(0))),
        padding: EdgeInsets.only(
            top: Insets().appPadding / 2, bottom: Insets().appPadding / 2),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                radius: widget.size! > 100 ? 40 : 24,
                backgroundColor: Palette().textColor,
                child: ClipOval(child: Image.asset("assets/img/skylogo2.png")),
              ),
            ),
            SizedBox(
              height: 7,
            ),
            SizedBox(
              height: size.height - 107,
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  controller: globalData.scrollCont,
                  child: Column(
                    children: [
                      ...List.generate(items.length, (index) {
                        return Container(
                          child: DrawerItem(
                            size: items[index]["size"],
                            selected: items[index]["selected"],
                            value: items[index]["value"],
                            iconData: items[index]["iconData"],
                            iconData2: items[index]["iconData2"],
                            submenu1: items[index]["submenu1"],
                            submenu2: items[index]["submenu2"],
                            submenu3: items[index]["submenu3"],
                            submenu4: items[index]["submenu4"],
                            submenu5: items[index]["submenu5"],
                            submenu6: items[index]["submenu6"],
                            submenu7: items[index]["submenu7"],
                            submenu8: items[index]["submenu8"],
                            submenu9: items[index]["submenu9"],
                            submenu10: items[index]["submenu10"],
                            submenu011: items[index]["submenu011"],
                            submenu012: items[index]["submenu012"],
                            submenu11: items[index]["submenu1.1"],
                            submenu12: items[index]["submenu1.2"],
                            submenu13: items[index]["submenu1.3"],
                            submenu14: items[index]["submenu1.4"],
                            submenu31: items[index]["submenu3.1"],
                            submenu32: items[index]["submenu3.2"],
                            submenu33: items[index]["submenu3.3"],
                            submenu34: items[index]["submenu3.4"],
                            submenu41: items[index]["submenu4.1"],
                            submenu42: items[index]["submenu4.2"],
                            submenu43: items[index]["submenu4.3"],
                            submenu44: items[index]["submenu4.4"],
                            submenu45: items[index]["submenu4.5"],
                            submenu46: items[index]["submenu4.6"],
                            submenu47: items[index]["submenu4.7"],
                            link: items[index]["link"],
                            route: items[index]["route"],
                            submenu1ex: items[index]["submenu1ex"],
                            submenu3ex: items[index]["submenu3ex"],
                            submenu4ex: items[index]["submenu4ex"],
                            onHover: (val) {
                              globalData.oldIndex = index;

                              if (globalData.menu == true)
                                setState(() {
                                  if (val) {
                                    _drawerSize = 250;
                                  } else {
                                    _drawerSize = 60;
                                  }
                                });
                              if (globalData.menu == false)
                                setState(() {
                                  _drawerSize = 250;
                                });
                              widget.onTap!(_drawerSize);
                              widget.onTap!(_drawerSize);
                            },
                            onTap: (val) {
                              setState(() {
                                globalData.selected[index] = val;
                                globalData.selection();
                              });
                              globalData.drawerPos =
                                  globalData.scrollCont.positions.last.pixels;
                            },
                          ),
                        );
                      })
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
