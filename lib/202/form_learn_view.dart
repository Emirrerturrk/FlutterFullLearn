import 'package:flutter/material.dart';

class FormLearnView extends StatefulWidget {
  const FormLearnView({super.key});

  @override
  State<FormLearnView> createState() => _FormLearnViewState();
}

class _FormLearnViewState extends State<FormLearnView> {
  GlobalKey<FormState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        autovalidateMode: AutovalidateMode.always,
        key: _key,
        onChanged: () {
          print("a");
        },
        child: Column(
          children: [
            TextFormField(validator: FormFiledValidator().isNotEmpty),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState?.validate() ?? false) {
                    print("okey");
                  }
                },
                child: Text("Save"))
          ],
        ),
      ),
    );
  }
}

class FormFiledValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : "Boş Geçilemez";
  }
}
