import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Flutter Form Demo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController email = TextEditingController();
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController age = TextEditingController();
  final TextEditingController salary = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Padding(padding: EdgeInsets.all(2.0)),
                  InputBox('Email', email),
                  const SizedBox(height: 10),
                  InputBox('First Name', firstName),
                  const SizedBox(height: 10),
                  InputBox('Last Name', lastName),
                  const SizedBox(height: 10),
                  InputBox('Age', age),
                  const SizedBox(height: 10),
                  InputBox('Salay', salary),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      print('form submited');
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

class InputBox extends StatelessWidget {
  String text;

  TextEditingController textEditingController;
  InputBox(this.text, this.textEditingController, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.black)
          ),
      child: TextField(
        controller: textEditingController,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: text,
        ),
      ),
    );
  }
}
