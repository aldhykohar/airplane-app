import 'package:airplane/ui/widget/custom_button.dart';
import 'package:airplane/ui/widget/custom_text_form_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController hobbyController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\n your next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextFormField(
          title: 'Name',
          hintText: 'Your Full Name',
          controller: nameController,
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email',
          hintText: 'Your Email Address',
          controller: emailController,
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Your Password',
          obscureText: true,
          controller: passwordController,
        );
      }

      Widget hobbyInput() {
        return CustomTextFormField(
          title: 'Hobby',
          hintText: 'Your Hobby',
          controller: hobbyController,
        );
      }

      Widget submitButton() {
        return CustomButton(
            title: 'Get Started',
            onPress: () {
              Navigator.pushNamed(context, '/bonus');
            });
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 50,
          bottom: 73,
        ),
        child: Text(
          'Term and Conditions',
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [title(), inputSection(), tacButton()],
        ),
      ),
    );
  }
}
