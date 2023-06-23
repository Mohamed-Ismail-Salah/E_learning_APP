import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class UserImage extends StatelessWidget {
    UserImage({super.key,
    required this.widthImg,
    required this.heightImg,
      required  this.img
  });
double heightImg;
  double widthImg;
  String img;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child:SizedBox(
        height: heightImg,
        width:  widthImg,
        child: CachedNetworkImage(

          imageUrl:"https://what-a-sito.000webhostapp.com/$img",
          placeholder: (context, image) =>  const CircularProgressIndicator(


          ),
          errorWidget: (context, image, error) =>  Image.asset("assets/images/user.png"),
          fit: BoxFit.fill,
        ),
      ),

    );
  }
}