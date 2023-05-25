import 'package:flutter/material.dart';
class Background extends StatelessWidget
{
  const Background({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context)
  {
    return Container
    (
      decoration: const BoxDecoration
      (
        gradient: LinearGradient
        (
          colors:
          [
            Color.fromRGBO(97, 54, 213, 1),
            Color.fromRGBO(198, 34, 239, 1)
          ],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft
        )
      ),
    );
  }
}