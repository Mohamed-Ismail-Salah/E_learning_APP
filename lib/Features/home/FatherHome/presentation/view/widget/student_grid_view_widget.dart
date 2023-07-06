
import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:flutter/cupertino.dart';

import 'Father_build_grid_Item.dart';


class FatherGridViewWidget extends StatelessWidget {
  const FatherGridViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        children: [
          FatherBuildGridItem(imageUrl:'assets/images/Student Council (1).png', name:'Message',page:AppRouter.kAllMessageView),
          FatherBuildGridItem(imageUrl:'assets/images/Student Council (2).png',name: 'Log Out',page:AppRouter.kLoginFatherView),

          // add more grid items here
        ],
      ),
    );
  }


}