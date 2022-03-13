import 'package:flutter/material.dart';

class CardImplementation extends StatelessWidget {
  const CardImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 5,
          color: Colors.black12,
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
                    image: const NetworkImage(
                      "https://images.unsplash.com/photo-1647089490719-d539f4041119?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                    ),
                    height: 240,
                    fit: BoxFit.fill,
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
                    bottom: 8,
                    left: 12,
                    child: Text(
                      "Fluttadex - Card",
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
                  "Card is a build-in widget in flutter which derives its design from Google’s Material Design Library. The functionality of this widget on screen is, it is bland space or panel with round corners and a slight elevation on the lower side. It comes with many properties like color, shape, shadow color, etc which lets developers customize it the way they like.",
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
