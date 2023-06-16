import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserImage extends StatelessWidget {
    UserImage({super.key,
    required this.widthimg,
    required this.heightimg

  });
double heightimg;
  double widthimg;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child:SizedBox(
        height: heightimg,
        width:  widthimg,
        child: CachedNetworkImage(

          imageUrl:"https://what-a-sito.000webhostapp.com/user_imgs/",
          placeholder: (context, image) =>  const CircularProgressIndicator(


          ),
          errorWidget: (context, image, error) =>  Image.asset("assets/images/user.png"),
          fit: BoxFit.fill,
        ),
      ),

    );
  }
}