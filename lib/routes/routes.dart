import 'package:skyhospital_erp/main.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/candidateDatabase.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/careersite.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/interviewSchedule.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/jobApplication.scrn.dart';
import 'package:skyhospital_erp/screens/HR/Recruitment/offerLetter.scrn.dart';
import 'package:skyhospital_erp/screens/HR/appreciation.scrn.dart';
import 'package:skyhospital_erp/screens/HR/attendance.scrn.dart';
import 'package:skyhospital_erp/screens/InPatient%20Management/bedStatus.scrn.dart';
import 'package:skyhospital_erp/screens/Misc//billing.scrn.dart';

import 'package:skyhospital_erp/screens/Consultation/clinicalManagement.scrn.dart';
import 'package:skyhospital_erp/screens/HR/department.scrn.dart';
import 'package:skyhospital_erp/screens/HR/designation.scrn.dart';
import 'package:skyhospital_erp/screens/Misc/doctorConsultation.scrn.dart';
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
import 'package:skyhospital_erp/screens/Login/login.scrn.dart';
import 'package:skyhospital_erp/screens/Medical%20Records/medicalRecords.scrn.dart';
import 'package:skyhospital_erp/screens/System%20Configuration/methodsOfPayment.scrn.dart';

import 'package:skyhospital_erp/screens/Misc/optometry.scrn.dart';
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
import 'package:skyhospital_erp/screens/Misc/storeType.scrn.dart';
import 'package:skyhospital_erp/screens/Inventory%20&%20Assets/supplier.scrn.dart';
import 'package:skyhospital_erp/screens/Misc/supplierType.scrn.dart';
import 'package:skyhospital_erp/screens/Misc/theater.scrn.dart';
import 'package:skyhospital_erp/screens/System%20Configuration/userRoles.scrn.dart';
import 'package:skyhospital_erp/screens/Misc/visualAcuityTest.scrn.dart';
import 'package:skyhospital_erp/screens/Misc/ward.scrn.dart';

class routes {
  var route = {
    "/": (context) => login(),
    "/home": (context) => MyHomePage(context: context, page: homePage()),
    "/outPatientManagement": (context) =>
        MyHomePage(context: context, page: patients()),
    "/consultation": (context) =>
        MyHomePage(context: context, page: clinicalManagement()),
    "/phlebotomy": (context) =>
        MyHomePage(context: context, page: phlebotomy()),
    "/laboratory": (context) =>
        MyHomePage(context: context, page: laboratory()),
    "/radix": (context) => MyHomePage(context: context, page: radiology()),
    "/pharmacyManagement": (context) =>
        MyHomePage(context: context, page: pharmacy()),
    "/medicalrecords": (context) =>
        MyHomePage(context: context, page: medicalRecords()),
    "/inPatientManagement/patientRegistration": (context) =>
        MyHomePage(context: context, page: patients()),
    "/inPatientManagement/patientAdmission": (context) =>
        MyHomePage(context: context, page: patientAdmission()),
    "/inPatientManagement/bedStatus": (context) =>
        MyHomePage(context: context, page: bedStatus()),
    "/emergency": (context) => MyHomePage(context: context, page: emergency()),
    "/ward": (context) => MyHomePage(context: context, page: ward()),
    "/theater": (context) => MyHomePage(context: context, page: theater()),
    "/visualAcuityTesting": (context) =>
        MyHomePage(context: context, page: visualAcuityTest()),
    "/doctorConsultation": (context) =>
        MyHomePage(context: context, page: doctorConsultation()),
    "/optometry": (context) => MyHomePage(context: context, page: optometry()),
    "/payments": (context) => MyHomePage(context: context, page: payments()),
    "/pharmacy": (context) => MyHomePage(context: context, page: pharmacy()),
    "/HR/employee": (context) =>
        MyHomePage(context: context, page: employees()),
    "/HR/leaves": (context) => MyHomePage(context: context, page: leaves()),
    "/HR/attendance": (context) =>
        MyHomePage(context: context, page: attendance()),
    "/HR/holiday": (context) => MyHomePage(context: context, page: holiday()),
    "/HR/designation": (context) =>
        MyHomePage(context: context, page: designation()),
    "/HR/department": (context) =>
        MyHomePage(context: context, page: department()),
    "/HR/appreciation": (context) =>
        MyHomePage(context: context, page: appreciation()),
    "/HR/recruitment/dashboard": (context) =>
        MyHomePage(context: context, page: recruitmentDashboard()),
    "/HR/recruitment/jobs": (context) =>
        MyHomePage(context: context, page: jobs()),
    "/HR/recruitment/jobApplications": (context) =>
        MyHomePage(context: context, page: jobApplication()),
    "/HR/recruitment/interviewSchedule": (context) =>
        MyHomePage(context: context, page: interviewSchedule()),
    "/HR/recruitment/offerLetter": (context) =>
        MyHomePage(context: context, page: offerLetter()),
    "/HR/recruitment/candidateDatabase": (context) =>
        MyHomePage(context: context, page: candidateDB()),
    "/HR/recruitment/career-site": (context) =>
        MyHomePage(context: context, page: careersite()),
    "/accounts&revenue/patientBilling": (context) =>
        MyHomePage(context: context, page: patientBilling()),
    "/accounts&revenue/inventoryBilling": (context) =>
        MyHomePage(context: context, page: inventoryBilling()),
    "/inventory/store": (context) =>
        MyHomePage(context: context, page: stores()),
    "/inventory/packagetype": (context) =>
        MyHomePage(context: context, page: storeType()),
    "/inventory/item": (context) =>
        MyHomePage(context: context, page: storeItem()),
    "/inventory/suppliertype": (context) =>
        MyHomePage(context: context, page: supplierType()),
    "/inventory/supplier": (context) =>
        MyHomePage(context: context, page: supplier()),
    "/inventory/purchaseOrder": (context) =>
        MyHomePage(context: context, page: purchaseOrder()),
    "/inventory/billing": (context) =>
        MyHomePage(context: context, page: billing()),
    "/payroll/employeeSalary": (context) =>
        MyHomePage(context: context, page: employeeSalary()),
    "/payroll/employeeBonus": (context) =>
        MyHomePage(context: context, page: employeeBonus()),
    "/payroll/payroll": (context) =>
        MyHomePage(context: context, page: payroll()),
    "/reports/general": (context) =>
        MyHomePage(context: context, page: generalReport()),
    "/reports/payment": (context) =>
        MyHomePage(context: context, page: payments()),
    "/reports/pharmacy": (context) =>
        MyHomePage(context: context, page: pharmacy()),
    "/reports/stock": (context) =>
        MyHomePage(context: context, page: stockReport()),
    "/reports/referrals": (context) =>
        MyHomePage(context: context, page: referralreport()),
    "/system/roles": (context) =>
        MyHomePage(context: context, page: userRoles()),
    "/system/paymentmethod": (context) =>
        MyHomePage(context: context, page: methodsOfPayment()),
    "/system/region": (context) =>
        MyHomePage(context: context, page: regionDistricts()),
    "/system/details": (context) =>
        MyHomePage(context: context, page: hospitalDetails()),
  };

  // var route2 = List.generate(skyHospitalDrawer().items!.length, (index) {
  //   if (skyHospitalDrawer().items![index]["route"] != null &&
  //       skyHospitalDrawer().items![index]["link"] != null)
  //     return {
  //       skyHospitalDrawer().items![index]["route"] as String: (context) =>
  //           skyHospitalDrawer().items![index]["link"] as Widget
  //     };
  // });
}
