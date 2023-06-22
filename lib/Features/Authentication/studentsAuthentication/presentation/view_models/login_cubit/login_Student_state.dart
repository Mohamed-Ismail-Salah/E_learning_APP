

import 'package:flutter/material.dart';

@immutable
abstract class LoginStudentState {}

class LoginStudentInitial extends LoginStudentState {}
class LoginStudentLoading extends LoginStudentState {}

class LoginStudentFailure extends LoginStudentState {
  final String errMessage;

  LoginStudentFailure(this.errMessage);
}
class LoginStudentSuccess extends LoginStudentState {
  final String  token;

  LoginStudentSuccess(this.token);
}
