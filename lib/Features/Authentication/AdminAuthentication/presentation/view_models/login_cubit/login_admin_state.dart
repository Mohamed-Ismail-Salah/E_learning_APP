

import 'package:flutter/material.dart';

@immutable
abstract class LoginAdminState {}

class LoginAdminInitial extends LoginAdminState {}
class LoginAdminLoading extends LoginAdminState {}

class LoginAdminFailure extends LoginAdminState {
  final String errMessage;

  LoginAdminFailure(this.errMessage);
}
class LoginAdminSuccess extends LoginAdminState {
  final String  token;

  LoginAdminSuccess(this.token);
}
