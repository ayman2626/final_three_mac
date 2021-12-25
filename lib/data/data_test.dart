

//building materials
import 'package:final_three_mac/models/builiding_materials_detils.dart';
import 'package:final_three_mac/models/builidng_materials.dart';
import 'package:final_three_mac/models/buyer/buyer_order.dart';
import 'package:final_three_mac/models/users.dart';

final BuildingMaterials = builiding_materials(materials: [
  builiding_materials_detils(name: 'Brick', quantity: 0, price: 0),
  builiding_materials_detils(name: 'Cement', quantity: 0, price: 0),
  builiding_materials_detils(name: 'iron', quantity: 0, price: 0),
  builiding_materials_detils(name: 'gypsum', quantity: 0, price: 0),
  builiding_materials_detils(name: 'Yara', quantity: 0, price: 0)
]);

//...............................................

//seller new orders

//seller offers for customers

//seller orders in work

//seller notifications

//...............................................

//users
final buyer = Users(name: 'ayman',
    //orders
    orders: [
      buyer_order(
          doneORnot: 'no',
          sellerID: '12381',
          sellerName: 'ayman',
          orderDetils: builiding_materials_detils(
              name: 'Brick', quantity: 10, price: 10),
          date: '10/20/2202'),
      buyer_order(
          doneORnot: 'yes',
          sellerID: '861818',
          sellerName: 'yara',
          orderDetils:
              builiding_materials_detils(name: 'Cement', quantity: 5, price: 8),
          date: '10/20/2202'),
      buyer_order(
          doneORnot: 'no',
          sellerID: '64684',
          sellerName: 'doaa',
          orderDetils:
              builiding_materials_detils(name: 'iron', quantity: 8, price: 20),
          date: '10/20/2202'),
      buyer_order(
          doneORnot: 'yes',
          sellerID: '45616',
          sellerName: 'mohamed',
          orderDetils: builiding_materials_detils(
              name: 'gypsum', quantity: 15, price: 78),
          date: '10/20/2202'),
      buyer_order(
          doneORnot: 'no',
          sellerID: '161661',
          sellerName: 'mena',
          orderDetils: builiding_materials_detils(
              name: 'Yara', quantity: 1, price: 1200),
          date: '10/20/2202'),
      //cart
    ], cart: [
  builiding_materials_detils(name: 'Brick', quantity: 10, price: 10),
  builiding_materials_detils(name: 'Cement', quantity: 5, price: 8),
  builiding_materials_detils(name: 'iron', quantity: 8, price: 20),
  builiding_materials_detils(name: 'gypsum', quantity: 15, price: 78),
  builiding_materials_detils(name: 'Yara', quantity: 1, price: 1200),
  //notifications
], notifications: [
  buyer_order(
      doneORnot: 'no',
      sellerID: '12381',
      sellerName: 'ayman',
      orderDetils:
          builiding_materials_detils(name: 'Brick', quantity: 10, price: 10),
      date: '10/20/2202'),
  buyer_order(
      doneORnot: 'yes',
      sellerID: '861818',
      sellerName: 'yara',
      orderDetils:
          builiding_materials_detils(name: 'Cement', quantity: 5, price: 8),
      date: '10/20/2202'),
  buyer_order(
      doneORnot: 'no',
      sellerID: '64684',
      sellerName: 'doaa',
      orderDetils:
          builiding_materials_detils(name: 'iron', quantity: 8, price: 20),
      date: '10/20/2202'),
  buyer_order(
      doneORnot: 'yes',
      sellerID: '45616',
      sellerName: 'mohamed',
      orderDetils:
          builiding_materials_detils(name: 'gypsum', quantity: 15, price: 78),
      date: '10/20/2202'),
  buyer_order(
      doneORnot: 'no',
      sellerID: '161661',
      sellerName: 'mena',
      orderDetils:
          builiding_materials_detils(name: 'Yara', quantity: 1, price: 1200),
      date: '10/20/2202'),
]);
