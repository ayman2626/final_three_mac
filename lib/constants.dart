class ErrorCodes{
  static const int NO_CONNECTION_CODE = 1000;
  static const int NO_BODY_PARSING_CODE = 2000;
  static const int NO_RESPONSE_CODE = 3000;
  static const int SERVER_ERRORS_CODE = 4000;
  
}

class Failure{
  final int code;
  final String message;

  Failure(this.code, this.message);

}

class ApiResult {
  late bool hasError;
  dynamic data;
  late Failure failure;
}

enum paymentMethod { cash, visa }

class Location {
  Location(this.state, this.address, this.specialMark);
  final String address;
  final String state;
  final String specialMark;
}

class Details {
  String? cargoType; //trella
  String? reciveTime;
  String? returnTime;
  String? materialType; // raml toob etc.
  List<String>? subType;
  List<String>? unit;
  List<String>? shape;
  double? quantity;
  double? price;

  Details(
      [this.cargoType,
      this.reciveTime,
      this.returnTime,
      this.materialType,
      this.price,
      this.quantity,
      this.shape,
      this.subType,
      this.unit]);
}

enum serviceType { material, cargo }

enum offerStatus { pending, accepted, cancelled }

enum reportType { request, general }

enum roles{
    buyer,
    vendor
   }