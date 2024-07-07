import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/income_header.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
