import 'package:flutter/material.dart';
import 'package:refcoin_assignment/core/app_colors.dart';
import 'package:refcoin_assignment/views/widgets/refcoins_custom_button.dart';
import 'package:refcoin_assignment/views/widgets/refcoins_custom_text_field.dart';

class RefcoinsSignInView extends StatefulWidget {
  const RefcoinsSignInView({Key? key}) : super(key: key);

  @override
  _RefcoinsSignInViewState createState() => _RefcoinsSignInViewState();
}

class _RefcoinsSignInViewState extends State<RefcoinsSignInView> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Sign in",
        ),
        toolbarHeight: 119,
        backgroundColor: AppColors.primaryBackgroundColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: AppColors.primaryWhiteColor,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 113),
                  child: Image(
                    image: AssetImage(
                      "images/logo.png",
                    ),
                    height: 42,
                    width: 167,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 36, top: 94, right: 52),
                child: Text(
                  "Please sign in with the credentials \nshared by the company",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 29, right: 28),
                child: RefCoinsCustomTextField(
                  hintText: "User Name",
                  backgroundColor: AppColors.secondaryBackgroundColor,
                  borderColor: AppColors.primaryBorderColor,
                  textEditingController: userNameController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 29, left: 29, right: 28),
                child: RefCoinsCustomTextField(
                  hintText: "Password",
                  backgroundColor: AppColors.secondaryBackgroundColor,
                  borderColor: AppColors.primaryBorderColor,
                  textEditingController: passwordController,
                  isPassword: true,
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    //TODO : ForgetPasswordFunction
                  },
                  child: Text(
                    "Forgot password or user name? Click here!",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                height: 39,
              ),
              Center(
                child: RefCoinsCustomButton(
                  title: "Sign in",
                  backgroundColor: AppColors.primaryBackgroundColor,
                  onTap: () {
                    //TODO : LoginFunction
                  },
                  textColor: AppColors.primaryWhiteColor,
                ),
              ),
              SizedBox(
                height: 72,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
