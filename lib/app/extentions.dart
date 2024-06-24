
import 'package:flutter_advanced_project/data/mapper/mapper.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null) {
      return EMPTY;
    } else {
      return this!;
    }
  }
}


extension NonNullIntiger on int? {
  int orEmpty() {
    if (this == null) {
      return ZERO;
    } else {
      return this!;
    }
  }
}
