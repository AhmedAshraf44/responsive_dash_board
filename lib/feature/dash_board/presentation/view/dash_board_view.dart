import 'package:flutter/material.dart';

import 'widgets/adaptive_layout_widget.dart';
import 'widgets/dash_board_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) =>const SizedBox(),
        tabletLayout: (context) =>const SizedBox(),
        desktopLayout: (context) =>const DashboardDesktopLayout(),
      ),
    );
  }
}
