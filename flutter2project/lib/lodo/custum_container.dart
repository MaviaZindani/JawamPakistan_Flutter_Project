import 'package:flutter/material.dart';

class _Tringle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(size.width / 2, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class Plyers_place extends StatelessWidget {
  final Color plyer;
  const Plyers_place({
    super.key,
    required this.plyer,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 38 * 6,
          width: 38 * 6,
          color: plyer,
          child: Align(
            alignment: Alignment.center,
            child: Container(
              height: 38 * 4.2,
              width: 38 * 4.2,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: plyer,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: plyer,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: plyer,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Container(
                          height: 28,
                          width: 28,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: plyer,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Play_Place extends StatelessWidget {
  final Icon? boxIcon;
  final Color placeColor;
  Play_Place({super.key, this.boxIcon, required this.placeColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 38,
      decoration: BoxDecoration(
          color: placeColor,
          border: Border.all(width: 0.3, color: Colors.black)),
      child: boxIcon,
    );
  }
}

class PlayPlaceMiddlePlace extends StatelessWidget {
  final Color placeColor;
  final int turn;
  const PlayPlaceMiddlePlace(
      {super.key, required this.placeColor, required this.turn});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RotatedBox(
        quarterTurns: turn,
        child: Container(
          child: Row(
            children: [
              Column(
                children: [
                  Play_Place(
                    placeColor: Colors.white,
                  ),
                  Play_Place(
                    placeColor: Colors.white,
                  ),
                  Play_Place(
                    placeColor: Colors.white,
                    boxIcon: const Icon(Icons.star_border_outlined),
                  ),
                  Play_Place(
                    placeColor: Colors.white,
                  ),
                  Play_Place(
                    placeColor: Colors.white,
                  ),
                  Play_Place(
                    placeColor: Colors.white,
                  ),
                ],
              ),
              Column(
                children: [
                  Play_Place(
                    placeColor: Colors.white,
                    boxIcon: const Icon(Icons.arrow_downward_outlined),
                  ),
                  Play_Place(
                    placeColor: placeColor,
                  ),
                  Play_Place(
                    placeColor: placeColor,
                  ),
                  Play_Place(
                    placeColor: placeColor,
                  ),
                  Play_Place(
                    placeColor: placeColor,
                  ),
                  Play_Place(
                    placeColor: placeColor,
                  ),
                ],
              ),
              Column(
                children: [
                  Play_Place(
                    placeColor: Colors.white,
                  ),
                  Play_Place(
                    placeColor: placeColor,
                  ),
                  Play_Place(
                    placeColor: Colors.white,
                  ),
                  Play_Place(
                    placeColor: Colors.white,
                  ),
                  Play_Place(
                    placeColor: Colors.white,
                  ),
                  Play_Place(
                    placeColor: Colors.white,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class WinPlace extends StatelessWidget {
  final Color winColor;
  final int turn;
  final double width;
  final double height;
  final Alignment alignment;
  const WinPlace(
      {super.key,
      required this.winColor,
      required this.turn,
      required this.width,
      required this.height,
      required this.alignment
      });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignment,
      child: Container(
        height: height,
        width: width,
        child: RotatedBox(
          quarterTurns: turn,
          child: ClipPath(
            child: Container(
              height: 38.0,
              width: 30.0,
              color: winColor,
            ),
            clipper: _Tringle(),
          ),
        ),
      ),
    );
  }
}
