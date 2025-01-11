import 'package:flutter/material.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';

extension HBox on num {
  Widget hb() {
    return SizedBox(height: this.toDouble());
  }
}

extension WBox on num {
  Widget wb() {
    return SizedBox(width: this.toDouble());
  }
}
