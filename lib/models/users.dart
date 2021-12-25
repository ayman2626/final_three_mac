
import 'package:final_three_mac/models/builiding_materials_detils.dart';
import 'package:final_three_mac/models/buyer/buyer_order.dart';

class Users {
  final String name;
  final List<buyer_order> orders;
  final List<builiding_materials_detils> cart;
  final List<buyer_order> notifications;

  Users(
      {required this.notifications,
      required this.name,
      required this.orders,
      required this.cart});
}
