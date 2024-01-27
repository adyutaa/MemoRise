// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> tabs = ["All Notes", "Folders"];

    int current = 0;

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
                height: size.height * 0.05,
                width: size.width,
                color: Colors.red,
                child: Stack(
                  children: [
                    Container(
                      width: size.width,
                      height: size.height * 0.04,
                      color: Colors.yellow,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: tabs.length,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  current = index;
                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left: index == 0 ? 120 : 40, top: 7),
                                child: Text(
                                  tabs[index],
                                  style: GoogleFonts.poppins(
                                      fontSize: current == index ? 16 : 14,
                                      fontWeight: current == index
                                          ? FontWeight.w500
                                          : FontWeight.w400),
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                ))
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
          onPressed: () {
            setState(() {});
          },
          label: Text("Add new notes"),
          icon: Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
