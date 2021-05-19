import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:proj_1/wigets/themes.dart';

class ProductHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Home".text.xl5.bold.color(MyTheme.darkBlueish).make(),
        "New products".text.xl2.make(),
      ],
    );
  }
}
