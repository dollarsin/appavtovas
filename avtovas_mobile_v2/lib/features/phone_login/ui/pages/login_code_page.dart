import 'package:flutter/material.dart';

import '../../../../shared/ui/ui_kit/app_bar.dart';
import '../../domain/models/data/login_code_body_data.dart';
import '../widgets/login_code_body.dart';

final class LoginCodePage extends StatelessWidget {
  const LoginCodePage({required this.data, super.key});

  final LoginCodeBodyData data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: const AvtovasAppBar(title: 'Авторизация'),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: LoginCodeBody(data: data),
            ),
          ],
        ),
      ),
    );
  }
}
