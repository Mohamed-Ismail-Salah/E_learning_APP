
import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:flutter/cupertino.dart';

import 'build_grid_Item.dart';


class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        children: [

          BuildGridItem(imageUrl:'assets/images/note 1.png',name: 'Courses',page:AppRouter.kCoursesView),
          BuildGridItem(imageUrl:'assets/images/Student Council12.png', name:'Staff members',page:""),
          BuildGridItem(imageUrl:'assets/images/22.png', name:'Profile',page:AppRouter.kProfileView),
          BuildGridItem(imageUrl:'assets/images/Student Council (1).png', name:'Send Message',page:AppRouter.kSearchStudentView),
          BuildGridItem(imageUrl:'assets/images/Student Council.png', name:'Send Message',page:AppRouter.kListCourseQrCodeView),
          BuildGridItem(imageUrl:'assets/images/Student Council (2).png',name: 'Log Out',page:AppRouter.kLoginView),
          // add more grid items here
        ],
      ),
    );
  }


}