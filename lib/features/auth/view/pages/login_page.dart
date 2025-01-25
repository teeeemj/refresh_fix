import 'package:auto_route/auto_route.dart';
import 'package:dashboard_mvvm_arch/features/auth/view/widgets/auth_error_popup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dashboard_mvvm_arch/core/constants/server_constants.dart';
import 'package:dashboard_mvvm_arch/core/router/router.dart';
import 'package:dashboard_mvvm_arch/features/auth/blocs/login_bloc/login_bloc.dart';
import 'package:dashboard_mvvm_arch/features/auth/models/login_request_model/login_request_model.dart';
import 'package:dashboard_mvvm_arch/features/auth/view/widgets/auth_textformfield.dart';
import 'package:dashboard_mvvm_arch/features/auth/view/widgets/custom_auth_button.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _password;
  late TextEditingController _phoneNumber;
  late TextEditingController _otpController;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _password = TextEditingController(text: '480054');
    _phoneNumber = TextEditingController(text: '+996703710076');
    _otpController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _password.dispose();
    _phoneNumber.dispose();
    _otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (context) => LoginBloc())],
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          backgroundColor: const Color(0xFF181818),
          resizeToAvoidBottomInset: true,
          body: Scrollbar(
            thumbVisibility: true,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 164.h, bottom: 70.h).add(
                  EdgeInsets.symmetric(horizontal: 24.w),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              'Enter your phone number',
                              style: TextStyle(
                                fontSize: 30.sp,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          24.verticalSpace,
                          AuthTextFormField(
                            hintText: 'Enter your phone number',
                            controller: _phoneNumber,
                            onChanged: (value) {},
                            isPhone: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field is neccessary';
                              }
                              return null;
                            },
                          ),
                          14.verticalSpace,
                          AuthTextFormField(
                            hintText: 'Enter your password',
                            controller: _password,
                            isPassword: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'This field is neccessary';
                              }
                              return null;
                            },
                          ),
                          4.verticalSpace,
                          Row(
                            children: [
                              const Spacer(),
                              GestureDetector(
                                onTap: () {},
                                child: Column(
                                  children: [
                                    Text(
                                      'Forgot password',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    1.5.verticalSpace,
                                    LayoutBuilder(
                                      builder: (context, constraints) {
                                        final textPainter = TextPainter(
                                          text: TextSpan(
                                            text: 'Forgot password',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Colors.white,
                                            ),
                                          ),
                                          maxLines: 1,
                                          textDirection: TextDirection.ltr,
                                        )..layout();

                                        return Container(
                                          height: 1.h,
                                          width: textPainter.width,
                                          color: Colors.white,
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 40.h),
                      BlocConsumer<LoginBloc, LoginState>(
                        listener: (context, state) {
                          if (state is LoginStateSuccess) {
                            AutoRouter.of(context)
                                .replaceAll([const SignupRoute()]);
                          } else if (state is LoginStateError) {
                            AuthErrorPopup(
                                errorMessage: state.message, onReturn: () {});
                          }
                        },
                        builder: (context, state) {
                          return CustomAuthButton(
                            title: 'login',
                            loading: state is LoginStateLoading,
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                context.read<LoginBloc>().add(
                                      LoginEvent.getStarted(
                                        reqModel: LoginRequestModel(
                                            phoneNumber: _phoneNumber.text,
                                            otp: _otpController.text,
                                            password: _password.text,
                                            domain: ServerConstants.domainName),
                                      ),
                                    );
                              }
                            },
                          );
                        },
                      ),
                      // CustomAuthButton(
                      //   title: 'Login',
                      //   onPressed: () {
                      //     if (_formKey.currentState!.validate()) {}
                      //   },
                      // ),
                      24.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't you have an account?",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                          8.horizontalSpace,
                          GestureDetector(
                            onTap: () {},
                            child: Column(
                              children: [
                                Text(
                                  'Create',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                                1.5.verticalSpace,
                                LayoutBuilder(
                                  builder: (context, constraints) {
                                    final textPainter = TextPainter(
                                      text: TextSpan(
                                        text: 'Create',
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white,
                                        ),
                                      ),
                                      maxLines: 1,
                                      textDirection: TextDirection.ltr,
                                    )..layout();

                                    return Container(
                                      height: 1.h,
                                      width: textPainter.width,
                                      color: Colors.white,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
}
