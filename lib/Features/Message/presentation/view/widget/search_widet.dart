import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Core/widgets/custom_textformfield.dart';
import '../../view_models/get_student_cubit/get_student_cubit.dart';
class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return AppTextFormField(
      onChanged: (value) {
        BlocProvider.of<GetStudentCubit>(context).getStudentInf(value);
      },
      hintText: "Student name",
      prefixIcon: const Icon(Icons.search),
    );
  }
}
