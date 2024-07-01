import 'package:flutter/material.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board/feature/dash_board/presentation/view/widgets/quick_invoice_header.dart';
import '../../../../../constants.dart';
import 'custom_background_container.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        SizedBox(
          height: 24,
        ),
        LatestTransaction(),
        Divider(
          height: 48,
          color: kAlternateBackgroundColor,
        ),
        QuickInvoiceForm(),
      ],
    ));
  }
}
