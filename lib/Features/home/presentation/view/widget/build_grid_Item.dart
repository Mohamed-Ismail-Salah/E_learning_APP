import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../Core/Utils/app_shared_preferences.dart';
import '../../../../../Core/Utils/styles.dart';
class BuildGridItem extends StatelessWidget{

  String imageUrl,name,page;

  BuildGridItem({super.key,  required this.name,required this.imageUrl,required this.page});
  @override

  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: () async {
        if(page=='/LoginView'){
          TokenStorage tokenStorage = TokenStorage();
           await tokenStorage.removeToken();
          context.pushReplacement(page);
        }else{
          context.push(page);
        }


      },
      child: Container(
        margin: const EdgeInsets.all(8),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  imageUrl,
                  width: 80,
                  height: 80,

                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              name,
              style:  Styles.textStyle16,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }

}