import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../constants/enums/styles/button_types_enum.dart';
import '../widgets/button_default.dart';
import '../widgets/text_heading1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  var loading = false;

  void showLoading() {
    setState(() {
      loading = !loading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width*0.8,
      ),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextH1(
                    title: AppLocalizations.of(context)!.home_screen_hello.replaceAll('_0_', 'Nicoli'),
                  ),
                ],
              )
            ),
            DefaultButton(
              text: AppLocalizations.of(context)!.logout_button, 
              action: showLoading,
              loading: loading,
              buttonType: ButtonType.danger,
            )
          ],
        ),
      ),
    );
  }
}

