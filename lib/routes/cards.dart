import 'package:flutter/material.dart';

class CardImplementation extends StatelessWidget {
  const CardImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          margin: const EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 25,
          ),
          elevation: 5,
          color: Colors.lightBlueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Ink.image(
                    image: const AssetImage(
                      "./assets/Images/flutterIcon.png",
                    ),
                    height: 240,
                    fit: BoxFit.cover,
                    colorFilter: const ColorFilter.matrix(
                      <double>[
                        0.2125,
                        0.7150,
                        0.0720,
                        0,
                        0,
                        0.2125,
                        0.7150,
                        0.0720,
                        0,
                        0,
                        0.2125,
                        0.7150,
                        0.0720,
                        0,
                        0,
                        0,
                        0,
                        0,
                        1,
                        0
                      ],
                    ),
                    child: InkWell(
                      onTap: () {},
                    ),
                  ),
                  const Positioned(
                    bottom: 0,
                    left: 16,
                    child: Text(
                      "Fluttadex",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: Text(
                  "Fluttadex is a project under the initiative of Tejesh sir aimed at introducing all the flutter widgets, their common use and application is a single program. The project is a part of the Open source contribution event as a part of the FOSS Weekend",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              ButtonBar(
                alignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Learn more",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardDescription extends StatelessWidget {
  const CardDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: const Text(
          'Card is a build-in widget in flutter which derives its design from Google’s Material Design Library. The functionality of this widget on screen is, it is bland space or panel with round corners and a slight elevation on the lower side. It comes with many properties like color, shape, shadow color, etc which lets developers customize it the way they like.',
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
