
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
          StudentBuildGridItem(imageUrl:'assets/images/22.png', name:'Profile',page:AppRouter.kStudentProfileView),
          StudentBuildGridItem(imageUrl:'assets/images/Student Council.png', name:'QR Scanner',page: AppRouter.kQRCodeScanner),
          StudentBuildGridItem(imageUrl:'assets/images/note 1.png', name:'Courses',page:AppRouter.kStudentCoursesView),
          StudentBuildGridItem(imageUrl:'assets/images/Student Council (1).png', name:'Message',page:AppRouter.kAllMessageView),
          StudentBuildGridItem(imageUrl:'assets/images/Student Council (2).png',name: 'Log Out',page:AppRouter.kLoginStudentView),

          // add more grid items here
        ],
      ),
    );
  }


}