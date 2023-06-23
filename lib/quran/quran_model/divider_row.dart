import 'package:flutter/material.dart';

import '../../model/theme_model.dart';

class DividerRow extends StatelessWidget {
  const DividerRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: MyTheme.lightPrimary,
      thickness: 2,
    );
  }
}
