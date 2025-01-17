import 'package:flutter/material.dart';

import 'application.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<StatefulWidget> createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  final _formKey = GlobalKey<FormState>();
  String mail = "";
  String password = "";
  String password2 = "";
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(children: [
          Container(padding: const EdgeInsets.all(20),
            alignment: Alignment.centerRight,
            child: const Menu(),
          ),
          Row(children: <Widget>[
            Container(
                padding: const EdgeInsets.all(50.0),
                child: const Text('Email:')),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Input email';
                          }

                          try {
                            mail = value;
                            return '';
                          } catch (e) {
                            mail = '';
                            return e.toString();
                          }
                        },
                        initialValue: ""))),
          ]),
          const SizedBox(height: 10.0),
          Row(children: <Widget>[
            Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text('Password:')),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) return 'Input!';

                          try {
                            password = value;
                          } catch (e) {
                            password = "";
                            return e.toString();
                          }
                        },
                        initialValue: ""))),
          ]),
          Row(children: <Widget>[
            Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text('Пароль:')),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) return 'Введите пароль!';

                          try {
                            password = value;
                          } catch (e) {
                            password = "";
                            return e.toString();
                          }
                        },
                        initialValue: ""))),
          ]),
          Row(children: <Widget>[
            Container(
                padding: const EdgeInsets.all(10.0),
                child: const Text('Возвраст:')),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) return 'Введите возвраст!';

                          try {
                            password = value;
                          } catch (e) {
                            password = "";
                            return e.toString();
                          }
                        },
                        initialValue: ""))),
          ]),
          const SizedBox(height: 50.0),
          ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  setState(() {});
                }
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  textStyle: const TextStyle(color: Colors.white)),
              child: const Text('Изменить')),
          const SizedBox(height: 50.0),
        ]));
  }
}
