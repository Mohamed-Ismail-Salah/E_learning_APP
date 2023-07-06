

import 'package:flutter/material.dart';

@immutable
abstract class LoginFatherState {}

class LoginFatherInitial extends LoginFatherState {}
class LoginFatherLoading extends LoginFatherState {}

class LoginFatherFailure extends LoginFatherState {
  final String errMessage;

  LoginFatherFailure(this.errMessage);
}
class LoginFatherSuccess extends LoginFatherState {
  final String  token;

  LoginFatherSuccess(this.token);
}
