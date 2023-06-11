import 'package:flutter/material.dart';

import '../widget/language/custombuttonlang.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Choose Language..", style: Theme.of(context).textTheme.displayLarge,),
            const SizedBox(height: 10.0),
            CustomButtonLang(
              textbutton: 'Ar',
              onPressed: () {},
            ),
            const SizedBox(height: 10.0),
            CustomButtonLang(
              textbutton: 'En',
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
