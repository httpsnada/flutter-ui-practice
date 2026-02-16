import 'package:flutter/material.dart';
import 'package:onboarding/core/constants/app_assets.dart';
import 'package:onboarding/core/constants/app_strings.dart';
import 'package:onboarding/core/utils/extensions.dart';
import 'package:onboarding/core/utils/spacing.dart';
import 'package:onboarding/core/utils/validators.dart';
import 'package:onboarding/features/auth/widgets/login_options_button.dart';
import 'package:onboarding/features/auth/widgets/text_fields.dart';

import '../../../core/theme/app_colors.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = 'login';

  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController;

  late TextEditingController _passwordController;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    String logoAsset = context.isDarkMode
        ? AppImages.logoDark
        : AppImages.logoLight;
    Color backgroundColor = context.isDarkMode
        ? AppColors.backgroundDark
        : AppColors.backgroundLight;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Padding(
                    padding: EdgeInsets.all(AppSpacing.lg),
                    child: IntrinsicHeight(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(logoAsset, height: 26, fit: BoxFit.cover),
                          Spacer(),
                          Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Text(
                                  AppStrings.loginTitle,
                                  style: theme.textTheme.titleLarge?.copyWith(
                                    fontSize: 28,
                                  ),
                                ),
                                SizedBox(height: AppSpacing.xxl),

                                CustomFormField(
                                  hintText: "Email",
                                  prefixIcon: Icons.email,
                                  keyboardType: TextInputType.emailAddress,
                                  controller: _emailController,
                                  validator: Validators.isEmail,
                                ),
                                SizedBox(height: AppSpacing.lg),

                                CustomFormField(
                                  hintText: "Password",
                                  prefixIcon: Icons.key_rounded,
                                  isPassword: true,
                                  controller: _passwordController,
                                  validator: Validators.isPassword,
                                ),
                                SizedBox(height: AppSpacing.xxl),

                                FilledButton(
                                  onPressed: submit,
                                  child: Text(AppStrings.loginButton),
                                ),
                                SizedBox(height: AppSpacing.xxl),

                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Divider(
                                      color: theme.colorScheme.onSurfaceVariant,
                                    ),

                                    Container(
                                      color: backgroundColor,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: AppSpacing.sm,
                                      ),
                                      child: Text(
                                        "Or continue with",
                                        style: theme.textTheme.bodySmall
                                            ?.copyWith(
                                              color:
                                                  theme.colorScheme.onSurface,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: AppSpacing.lg),

                                Row(
                                  children: [
                                    LoginOptionsButton(icon: AppIcons.google),
                                    SizedBox(width: AppSpacing.lg),
                                    LoginOptionsButton(icon: AppIcons.facebook),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don’t have an account?",
                                style: theme.textTheme.bodySmall,
                              ),
                              TextButton(
                                onPressed: () {
                                  // navigate to register screen
                                },
                                child: Text(
                                  "Register",
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: theme.colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  bool validateForm() {
    return _formKey.currentState?.validate() ?? false;
  }

  void submit() {
    if (!validateForm()) return;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("Login Successful")));
  }
}
