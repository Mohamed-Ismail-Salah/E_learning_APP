import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/get_Student_courses_cubit/getcourses_cubit.dart';

class StudentSelection extends StatefulWidget {
  @override
  _StudentSelectionState createState() => _StudentSelectionState();
}

class _StudentSelectionState extends State<StudentSelection> {
  String? selectedLevel;
  String? selectedTerm;

  List<String> levels = ['Level 1', 'Level 2', 'Level 3','Level 4'];
  List<String> terms = ['Term 1', 'Term 2'];

  @override
  Widget build(BuildContext context) {
    return   Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*.05,),
            Row(
              children: [
                Column(
                  children: [
                    const Text(
                      'Select Level:',
                      style: TextStyle(fontSize: 16),
                    ),
                    DropdownButton<String>(
                      value: selectedLevel,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedLevel = newValue;
                        });
                      },
                      items: levels.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],
                ),
               const Spacer(),
                Column(
                  children: [
                    const Text(
                      'Select Term:',
                      style: TextStyle(fontSize: 16),
                    ),
                    DropdownButton<String>(
                      value: selectedTerm,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedTerm = newValue;
                        });
                      },
                      items: terms.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ],

                ),
              ],
            ),


            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Handle the selection here
                if (selectedLevel != null && selectedTerm != null) {
                  //String level =
                 BlocProvider.of<GetStudentCoursesCubit>(context).getAllCourses(selectedLevel![6], selectedTerm![5]);
                  print('Level: ${selectedLevel![6]}, Term: ${selectedTerm![5]}');
                } else {
                  print('Please select both level and term.');
                }
              },
              child: const Text('Submit'),
            ),
          ],
    );
  }
}