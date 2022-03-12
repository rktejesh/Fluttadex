import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageImplementation extends StatelessWidget {
  const ImageImplementation({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var imgList = [
      "https://images.unsplash.com/photo-1646678187329-7544e633ff35?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      "https://images.unsplash.com/photo-1646991838618-7d7147658f37?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      "https://images.unsplash.com/photo-1646988423425-bc236bc449bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      "https://images.unsplash.com/photo-1633933329834-44543f91720f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80",
      "https://images.unsplash.com/photo-1545155085-967cb231d65f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxN3x8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60",
    ];

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                imgList[0],
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    // image has been loaded
                    return child; // return Image
                  }
                  // return a loader if image is not loaded yet
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                imgList[1],
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    // image has been loaded
                    return child; // return Image
                  }
                  // return a loader if image is not loaded yet
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(80),
              child: Image.network(
                imgList[2],
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    // image has been loaded
                    return child; // return Image
                  }
                  // return a loader if image is not loaded yet
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(120),
              child: Image.network(
                imgList[3],
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    // image has been loaded
                    return child; // return Image
                  }
                  // return a loader if image is not loaded yet
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(150),
              child: Image.network(
                imgList[4],
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    // image has been loaded
                    return child; // return Image
                  }
                  // return a loader if image is not loaded yet
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

class ImageDescription extends StatelessWidget {
  const ImageDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Image widget is used to present some beautiful images from local sources or directly from the web. Images can be rounded by wrapping them in a ClipRRect widget. Images which are loaded from the web can contain a loadingBuilder to visualize the loading progress.',
        style: TextStyle(),
        textAlign: TextAlign.center,
      ),
    );
  }
}
