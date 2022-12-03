import 'package:flutter/material.dart';
import 'package:flutter_pab/screens/auths/register_screen.dart';
import 'package:flutter_pab/widgets/custom_input_decoration.dart';
import 'package:flutter_pab/widgets/new_button.dart';

import '../../themes.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);
  static String route = '/auth/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailTextController = TextEditingController();

  final TextEditingController _passwordTextController = TextEditingController();
  bool isLoading = false;
  Widget emailInput() {
    return TextFormField(
      // key: _formKey,
      // validator: (value) => value.isEmpty ? 'Masukkan email!' : null,
      controller: _emailTextController,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.emailAddress,
      decoration: buildInputDecoration('Email', 'Email'),
    );
  }

  Widget passwordInput() {
    return TextFormField(
      // key: _formKey,

      // validator: (value) => value.isEmpty ? 'Masukkan password!' : null,
      controller: _passwordTextController,
      textInputAction: TextInputAction.next,
      obscureText: true,
      decoration: buildInputDecoration('Kata Sandi', 'Kata Sandi'),
    );
  }

  @override
  Widget build(BuildContext context) {
    // // handleSignIn() async {
    //   setState(() {
    //     isLoading = true;
    //   });
    //   if (_emailTextController.text.isEmpty ||
    //       _passwordTextController.text.isEmpty) {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(
    //         backgroundColor: kColorRed,
    //         content: Text(
    //           'Isi semua data!',
    //           textAlign: TextAlign.center,
    //         ),
    //       ),
    //     );
    //   }
    //   if (await authProvider.login(
    //     email: _emailTextController.text,
    //     password: _passwordTextController.text,
    //   )) {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(
    //         backgroundColor: kColorGreen,
    //         content: Text(
    //           'Kamu berhasil login!',
    //           textAlign: TextAlign.center,
    //         ),
    //       ),
    //     );
    //     Navigator.pushNamedAndRemoveUntil(
    //         context, HomePasienScreen.route, (route) => false);
    //   } else {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(
    //         backgroundColor: kColorRed,
    //         content: Text(
    //           'Gagal Login!',
    //           textAlign: TextAlign.center,
    //         ),
    //       ),
    //     );
    //   }

    //   setState(() {
    //     isLoading = false;
    //   });
    // }

    return SafeArea(
      child: Scaffold(
        backgroundColor: kColorBlue,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Masuk sebagai anggota',
                      style:
                          textBold.copyWith(color: Colors.white, fontSize: 24),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    emailInput(),
                    SizedBox(
                      height: 12,
                    ),
                    passwordInput(),
                    SizedBox(
                      height: 24,
                    ),
                    NewButton(
                      onPressed: () {},
                      text: 'Masuk',
                      color: kColorButton,
                    ),
                  ],
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RegisterScreen.route);
                },
                child: Text(
                  'Belum mempunyai akun? Daftar di sini',
                  style: textMain.copyWith(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
