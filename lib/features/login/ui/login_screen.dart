import 'package:doc/core/helpers/spacing.dart';
import 'package:doc/core/theming/colors.dart';
import 'package:doc/core/theming/styles.dart';
import 'package:doc/core/widgets/app_text_button.dart';
import 'package:doc/core/widgets/app_text_form_field.dart';
import 'package:doc/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:doc/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14greyRegular,
                ),
                verticalSpace(36),
                Form(
                    key: formKey,
                    child: Column(
                      children: [
                        const AppTextFormField(hintText: 'Email'),
                        verticalSpace(18),
                        AppTextFormField(
                          hintText: 'Password',
                          isObscureText: isObscureText,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isObscureText = !isObscureText;
                              });
                            },
                            icon: Icon(isObscureText
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                        ),
                        verticalSpace(24),
                        Align(
                            alignment: AlignmentDirectional.centerEnd,
                            child: Text('Forgot Password?',
                                style: TextStyles.font13BlueRegular)),
                        verticalSpace(40),
                        AppTextButton(
                          buttonText: 'Login',
                          textStyle: TextStyles.font16WhiteSemiBold,
                          onPressed: () {},
                        ),
                        const TermsAndConditionsText(),
                        verticalSpace(60),
                        const DontHaveAccountText(),
                        // const LoginBlocListener(),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
