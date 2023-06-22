
import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:flutter/cupertino.dart';

import 'student_build_grid_Item.dart';


class StudentGridViewWidget extends StatelessWidget {
  const StudentGridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        children: [

          StudentBuildGridItem(imageUrl:'assets/images/Student Council.png', name:'QR Scanner',page: ""),
           // add more grid items here
        ],
      ),
    );
  }


}