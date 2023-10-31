import 'package:flutter/material.dart';

class Timeouts {
  Timeouts._privateConstructor();

  static const CONNECT_TIMEOUT = 30000;
  static const RECEIVE_TIMEOUT = 30000;
  static const imageCache_TIMEOUT = 5; //in minutes
}

class GlobalKeys {
  GlobalKeys._privateConstructor();

  static final navigationKey = GlobalKey<NavigatorState>();
}

class Lists {
  static final propertyTypesList = [
    'Apartment',
    'Villa',
    'Independent Home',
    'Others'
  ];

  static final roomTypeList = ['Room type', 'Kitchen', 'Bedroom'];

  static final roomDesignTypeList = ['Design type', 'Kitchen', 'Wardrobe'];

  static final roomConfigurationList = [
    '1 BHK',
    '2 BHK',
    '3 BHK',
    '4 BHK',
    '5 BHK'
  ];
}

class UnitTypes {
  static final List unitenums = [
    'FILLER',
    'BASE_UNIT',
    'WALL_UNIT',
    'TALL_UNIT',
    'KITCHEN_LOFT_UNIT',
    'SHUTTER_FRAME_WORK',
  ];
}

class ColorList {
  static final List color = [
    [
      const Color(0xffB85252),
      const Color(0xffB4C6A6),
      const Color(0xff3282B8),
    ],
    [
      const Color(0xffF4ABC4),
      const Color(0xff346751),
    ],
    [
      const Color(0xff346751),
      const Color(0xffFFC947),
      const Color(0xff3282B8),
    ]
  ];
}

class OrderStatusCodes {
  static final orderStatus = {
    1: 'Initiated',
    2: 'Payment pending',
    3: 'Processing',
    4: 'Packed',
    5: 'Dispatched',
    6: 'Delivered'
  };
  // Mapping for the status of overall payment of the order
  static final orderPaymentStatus = {1: 'Paid', 2: 'Partly paid', 3: 'Unpaid'};

  // Mapping for the status of each payment made
  static final paymentStatus = {
    '1': 'Pending',
    '2': 'Processing',
    '3': 'Successful',
    '4': 'Failed'
  };

  // Mapping for the type of each payment made
  static paymentType(int index) =>
      {1: 'Full payment', 2: 'Part payment $index'};

  // Mapping for the method chosen for each payment made
  static final paymentMethods = {
    1: 'Cash',
    2: 'NEFT / RTGS',
    3: 'Online payment',
    4: 'Netbanking',
    5: 'UPI',
    6: 'Credit/Debit card'
  };
}

class FileTypes {
  // Supported file types for uploads
  static final mimeType = {
    'jpg': 'image/jpeg',
    'jpeg': 'image/jpeg',
    'png': 'image/png',
    'pdf': 'application/pdf',
    'doc': 'application/msword',
    'docx':
        'application/vnd.openxmlformats-officedocument.wordprocessingml.document'
  };
}

class UserIdentifiers {
  static final selfCustomerId = '-1';
}

enum ProfileVerificationNonApprovedStatus { CREATED, PENDING, REJECTED }

enum DimensionType { width, height, depth }

extension ParseToString on DimensionType {
  String toShortString() {
    return toString().split('.').last;
  }
}

enum PaymentStatus { CONNECTING, PROCESSING, SUCCESSFUL, FAILED, PENDING }

class HeightandWidth {
  static final defaultHeight = 58.0;
  static final defaultWidth = 280.0;
}

class DefaultHeight {
  static final defaultHeight = "2100";
  static final defaultWidth = "550";
}

class DefaultWidthRange {
  static final widthRangeList = <String>[
    '600-1000',
    '1000-2000',
    '2000-3000',
    '3000-4000',
    '4000-5000',
    '5000-6000',
    '6000-7000',
  ];
}

class DecodeUnitEnums {
  static String getUnitTypeDecoded(String unitType) {
    String decodedUnitType = "";
    if (UnitTypes.unitenums.contains(unitType)) {
      decodedUnitType = unitType;
    } else {
      switch (unitType) {
        case "KITCHEN_BASE_UNIT":
          decodedUnitType = 'BASE_UNIT';
          break;
        case "KITCHEN_WALL_UNIT":
          decodedUnitType = 'WALL_UNIT';
          break;
        case "KITCHEN_TALL_UNIT":
          decodedUnitType = 'TALL_UNIT';
          break;
        case "KITCHEN_LOFT_FRAME_SHUTTER":
        case "KITCHEN_LOFT_BOX_UNIT":
        case "KITCHEN_LOFT_FILLER":
        case "KITCHEN_LOFT_SIDE_PANEL":
        case "KITCHEN_LOFT_BOTTOM_PANEL":
          decodedUnitType = 'KITCHEN_LOFT_UNIT';
          break;
        case "KITCHEN_SHUTTER_FRAMEWORK":
          decodedUnitType = 'SHUTTER_FRAME_WORK';
          break;
        case "KITCHEN_FILLER":
          decodedUnitType = 'KITCHEN_FILLER';
          break;
      }
    }
    return decodedUnitType;
  }
}
