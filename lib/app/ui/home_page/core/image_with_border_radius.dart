import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/default_values.dart';

class ImageWithBorderRadius extends StatelessWidget {
  const ImageWithBorderRadius({Key? key,required this.imgUrl}) : super(key: key);
 final String imgUrl;

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 1.sw,
      height: 0.45.sw,
      margin: EdgeInsets.only(top: 2* kDefaultMargin.sh,left: kDefaultMargin.sh,right: kDefaultMargin.sh,bottom: kDefaultMargin.sh),
      decoration: BoxDecoration(
          border: Border.all(
              width: 1.5, color: Theme.of(context).colorScheme.secondary),
          borderRadius: BorderRadius.circular(0.04.sh)),
      child: CachedNetworkImage(
        imageUrl:
        imgUrl,
        imageBuilder: (context, imageProvider) => Container(
          decoration: BoxDecoration(
            color: Colors.red,
              borderRadius: BorderRadius.circular(0.038.sh),
            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          ),
        ),
        placeholder: (context, url) =>const Center(
          child: SizedBox(
            width: 40.0,
            height: 40.0,
            child:  CircularProgressIndicator(),
          ),
        ),
        errorWidget: (context, url, error) =>const Icon(Icons.error),
      ),
    );
  }
}
