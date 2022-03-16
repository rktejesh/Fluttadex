import 'package:flutter/material.dart';

class SliverAppBarImplementation extends StatelessWidget {
  const SliverAppBarImplementation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 250,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/Images/flutterIcon.png',
                  ),
                ),
              ),
            ),
            title: const Text(
              'SliverAppBar',
            ),
            centerTitle: true,
          ),
          floating: true,
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 100,
            alignment: Alignment.center,
            child: const Text(
              'Scroll down!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: ListView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            itemCount: 101,
            itemBuilder: (context, index) {
              return const SizedBox(
                height: 500,
                width: double.infinity,
              );
            },
          ),
        )
      ],
    );
  }
}

class SliverAppBarDescription extends StatelessWidget {
  const SliverAppBarDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          "A material design app bar that integrates with a CustomScrollView.\n\nAn app bar consists of a toolbar and potentially other widgets, such as a TabBar and a FlexibleSpaceBar. ",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
