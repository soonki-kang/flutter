import 'package:flutter/material.dart';

import '../../globals/config/palette_config.dart';

class Login2 extends StatelessWidget {
  // Login2({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();
  String userId = '';
  String userPassword = '';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Text(
                'LOGIN',
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        // keyboardType: TextInputType.emailAddress,
                        key: const ValueKey(4),
                        validator: (value) {
                          if (value!.isEmpty ) {
                            return 'Id를 입력하세요!';
                          }
                        return null;
                        },
                        onSaved: (value) {
                          userId = value!;
                        },
                        onChanged: (value) {
                          userId = value;
                        },
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.account_circle,
                              color: Palette.iConColor,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(35),
                                ),
                                borderSide: BorderSide(
                                    color: Palette.textColor1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(35),
                                ),
                                borderSide: BorderSide(
                                    color: Palette.textColor1)),
                            hintText: 'User Id',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Palette.textColor1),
                            contentPadding: EdgeInsets.all(10)),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      TextFormField(
                        obscureText: true,
                        key: const ValueKey(5),
                        validator: (value) {
                          if (value!.isEmpty || value.length < 6) {
                            return '비밀번호는 6자 이상이어야 합니다.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          userPassword = value!;
                        },
                        onChanged: (value) {
                          userPassword = value;
                        },
                        decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Palette.iConColor,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(35),
                                ),
                                borderSide: BorderSide(
                                    color: Palette.textColor1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(35),
                                ),
                                borderSide: BorderSide(
                                    color: Palette.textColor1)),
                            hintText: 'Password',
                            hintStyle: TextStyle(
                                fontSize: 14,
                                color: Palette.textColor1),
                            contentPadding: EdgeInsets.all(10)),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
  }
}
