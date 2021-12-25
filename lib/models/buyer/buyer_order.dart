
import 'package:final_three_mac/models/builiding_materials_detils.dart';

class buyer_order {
  final String doneORnot;
  final String sellerID;
  final String sellerName;
  final builiding_materials_detils orderDetils;
  final String date;

  buyer_order(
      {required this.doneORnot,
      required this.sellerID,
      required this.sellerName,
      required this.orderDetils,
      required this.date});
}
