import 'package:flutter/material.dart';

import '../../../../shared/ui/ui_kit/app_bar.dart';
import '../widgets/login_phone_bode.dart';

const _providerBody = 'login_phone_page';

final class LoginPhonePage extends StatelessWidget {
  const LoginPhonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: const Scaffold(
        appBar: AvtovasAppBar(title: 'Авторизация'),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: LoginPhoneBody(providerKey: _providerBody),
            ),
          ],
        ),
      ),
    );
  }
}
