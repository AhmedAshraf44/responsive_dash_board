import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/dash_board_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const ResponsiveDashboard(),
    ),
  );
}

class ResponsiveDashboard extends StatelessWidget {
  const ResponsiveDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const DashboardView(),
    );
  }
}
