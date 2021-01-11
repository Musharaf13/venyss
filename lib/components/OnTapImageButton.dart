import 'package:flutter/cupertino.dart';

class OnTapImageButton extends StatelessWidget {
  const OnTapImageButton({
    @required this.title,
    @required this.imgPath,
    @required this.onTap,
  });

  final String title;
  final String imgPath;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image(
            width: 100.0,
            height: 50.0,
            // fit: BoxFit.fill,
            image: new AssetImage(imgPath),
          ),
          SizedBox(
            height: 5,
          ),
          Text(title),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
