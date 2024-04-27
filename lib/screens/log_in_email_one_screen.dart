import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../theme/custom_button_style.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

class LogInEmailOneScreen extends StatelessWidget {
  LogInEmailOneScreen({super.key});

  TextEditingController emailFieldController = TextEditingController();

  TextEditingController passwordFieldController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onSecondaryContainer,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgLogInEmailOne,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: SizedBox(
              height: SizeUtils.height,
              child: Form(
                key: _formKey,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 8.v,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Spacer(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text(
                            "Log in",
                            style: theme.textTheme.headlineLarge,
                          ),
                        ),
                      ),
                      SizedBox(height: 13.v),
                      _buildEmailField(context),
                      SizedBox(height: 15.v),
                      _buildPasswordField(context),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 23.v,
                        ),
                        decoration: AppDecoration.fillPrimaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildContinueButton(context),
                            SizedBox(height: 16.v),
                            Text(
                              "Forgot password?",
                              style: CustomTextStyles.titleSmallPrimary,
                            ),
                            SizedBox(height: 31.v),
                            _buildRowVectorFour(context),
                            SizedBox(height: 32.v),
                            _buildLoginWithFacebookButton(context),
                            SizedBox(height: 16.v),
                            _buildLoginWithGoogleButton(context),
                            SizedBox(height: 16.v),
                            _buildLoginWithAppleButton(context),
                            SizedBox(height: 32.v),
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(AppRoutes.signUpScreen);
                              },
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Don’t have an account? ",
                                      style: CustomTextStyles
                                          .titleSmallBluegray50_1,
                                    ),
                                    TextSpan(
                                      text: "Sign up",
                                      style:
                                          CustomTextStyles.titleSmallPrimary_1,
                                    )
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomTextFormField(
        controller: emailFieldController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordField(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 15.h,
      ),
      child: CustomTextFormField(
        controller: passwordFieldController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        suffix: Container(
          margin: EdgeInsets.fromLTRB(30.h, 12.v, 16.h, 13.v),
          child: CustomImageView(
            imagePath: ImageConstant.imgEye,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 49.v,
        ),
        obscureText: true,
        contentPadding: EdgeInsets.only(
          left: 16.h,
          top: 16.v,
          bottom: 16.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Continue",
      buttonTextStyle: CustomTextStyles.titleSmallPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildRowVectorFour(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 9.v,
            bottom: 6.v,
          ),
          child: SizedBox(
            width: 139.h,
            child: const Divider(),
          ),
        ),
        Text(
          "Or",
          style: theme.textTheme.titleSmall,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 9.v,
            bottom: 6.v,
          ),
          child: SizedBox(
            width: 139.h,
            child: const Divider(),
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildLoginWithFacebookButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Login with Facebook",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFacebook,
          height: 23.adaptSize,
          width: 23.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillBlueGray,
      buttonTextStyle: CustomTextStyles.titleSmallPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildLoginWithGoogleButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Login with Google",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgImage2,
          height: 23.adaptSize,
          width: 23.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillBlueGray,
      buttonTextStyle: CustomTextStyles.titleSmallPrimaryContainer,
    );
  }

  /// Section Widget
  Widget _buildLoginWithAppleButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Login with Apple",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgApple,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillBlueGray,
      buttonTextStyle: CustomTextStyles.titleSmallPrimaryContainer,
    );
  }
}
