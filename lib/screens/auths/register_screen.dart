import 'package:flutter/material.dart';
import 'package:flutter_pab/themes.dart';
import 'package:flutter_pab/widgets/new_button.dart';

import '../../widgets/custom_input_decoration.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);
  static String route = '/auth/register';
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailTextController = TextEditingController();

  final TextEditingController _passwordTextController = TextEditingController();

  final TextEditingController _namaTextController = TextEditingController();

  bool isLoading = false;

  Widget namaInput() {
    return TextFormField(
      controller: _namaTextController,
      textInputAction: TextInputAction.next,
      keyboardType: TextInputType.text,
      decoration: buildInputDecoration('Nama', 'Nama'),
    );
  }

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

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
  }

  @override
  Widget build(BuildContext context) {
    // handleSignUp() async {
    //   setState(() {
    //     isLoading = true;
    //   });
    //   if (_nimTextController.text.isEmpty ||
    //       _namaTextController.text.isEmpty ||
    //       _emailTextController.text.isEmpty ||
    //       _noTelpTextController.text.isEmpty ||
    //       _passwordTextController.text.isEmpty ||
    //       _tempatLahirTextController.text.isEmpty ||
    //       _tanggalLahirTextController.text.isEmpty) {
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
    //   if (await authProvider.register(
    //     name: _namaTextController.text,
    //     email: _emailTextController.text,
    //     password: _passwordTextController.text,
    //     tempatLahir: _tempatLahirTextController.text,
    //     tanggalLahir: _tanggalLahirTextController.text,
    //     noInduk: _nimTextController.text,
    //     noTelp: _noTelpTextController.text,
    //     jenisKelamin: selectedValueGender == 0 ? 'laki-laki' : 'perempuan',
    //   )) {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(
    //         backgroundColor: kColorGreen,
    //         content: Text(
    //           'Kamu berhasil daftar!',
    //           textAlign: TextAlign.center,
    //         ),
    //       ),
    //     );
    //     Navigator.pushNamedAndRemoveUntil(
    //       context,
    //       LoginScreen.route,
    //       (route) => false,
    //     );
    //   } else {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       SnackBar(
    //         backgroundColor: kColorRed,
    //         content: Text(
    //           'Gagal Register!',
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Daftar sebagai anggota',
                    style: textBold.copyWith(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  emailInput(),
                  SizedBox(
                    height: 12,
                  ),
                  namaInput(),
                  SizedBox(
                    height: 12,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  passwordInput(),
                  SizedBox(
                    height: 24,
                  ),
                  NewButton(
                    onPressed: () {},
                    text: 'Daftar',
                    color: kColorButton,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
