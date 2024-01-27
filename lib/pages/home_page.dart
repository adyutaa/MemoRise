import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("MemoRise"),
      ),
      body: SizedBox(
        height: size.height * 0.05,
        width: size.width,
        child: Column(
          children: [
            Container(
              child: TabBar(
                tabs: [],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 160,
        height: 40,
        child: FloatingActionButton.extended(
          backgroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: () {},
          label: Text("Add new notes"),
          icon: Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
