
import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:flutter/cupertino.dart';

import 'build_grid_Item.dart';


class AdminGridViewWidget extends StatelessWidget {
  const AdminGridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        children: [

          AdminBuildGridItem(imageUrl:'assets/images/note 1.png',name: 'Courses',page:AppRouter.kCoursesView),
          AdminBuildGridItem(imageUrl:'assets/images/22.png', name:'Profile',page:AppRouter.kProfileView),
          AdminBuildGridItem(imageUrl:'assets/images/Student Council (1).png', name:'Send Message',page:AppRouter.kSearchStudentView),
          AdminBuildGridItem(imageUrl:'assets/images/Student Council.png', name:'QR Scanner',page:AppRouter.kListCourseQrCodeView),
          AdminBuildGridItem(imageUrl:'assets/images/Student Council (2).png',name: 'Log Out',page:AppRouter.kLoginView),
          // add more grid items here
        ],
      ),
    );
  }


}