import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormImplementation extends StatefulWidget {
  const FormImplementation({Key? key}) : super(key: key);

  @override
  _FormImplementationState createState() => _FormImplementationState();
}

class _FormImplementationState extends State<FormImplementation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/Images/register_bg.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(32.0),
              child: Text('Enter your details here:', style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w100,
              ),),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Your Name',
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                        )
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'username@gmail.com',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          )
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Your Password',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'LXX20210XX',
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          )
                      ),
                    ),
                  ),

                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff4c505b),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward),
                    ),
                  )


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FormDescription extends StatelessWidget {
  const FormDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Form class is used to design a form in flutter. TextField widget allows user to input details which can be further decorated with decoration property. Password fields can be made to hide the text with obscureText property set to true.",
        style: TextStyle(),
        textAlign: TextAlign.center,
      ),
    );
  }
}
