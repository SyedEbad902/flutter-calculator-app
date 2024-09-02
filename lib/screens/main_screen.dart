import 'package:calculator_app/Constants/appcolors.dart';
import 'package:flutter/material.dart';

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
          // title: const Text("appbar"),
          ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Input",
                  style: TextStyle(
                      fontSize: 30,
                      color: Appcolors.acColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Output",
                  style: TextStyle(
                      fontSize: 30,
                      color: Appcolors.acColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 62,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        // fixedSize: const Size(70, 62),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    child: Text(
                      "AC",
                      style: TextStyle(
                          fontSize: 16,
                          color: Appcolors.acColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  height: 62,
                  width: 70,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        // fixedSize: const Size(70, 62),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                    child: Icon(
                      Icons.backspace_outlined,
                      color: Appcolors.acColor,
                    ),
                  ),
                ),
                customButton(
                    text: "/",
                    fgColor: Appcolors.textColor,
                    onPressed: () {},
                    bgColor: Appcolors.opButtonColor,
                    height: 62,
                    width: 70),
                customButton(
                    text: "*",
                    fgColor: Appcolors.textColor,
                    onPressed: () {},
                    bgColor: Appcolors.opButtonColor,
                    height: 62,
                    width: 70),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customButton(
                    text: "7",
                    fgColor: Appcolors.textColor,
                    onPressed: () {},
                    bgColor: Appcolors.whiteColor,
                    height: 62,
                    width: 70),
                customButton(
                    text: "8",
                    fgColor: Appcolors.textColor,
                    onPressed: () {},
                    bgColor: Appcolors.whiteColor,
                    height: 62,
                    width: 70),
                customButton(
                    text: "9",
                    fgColor: Appcolors.textColor,
                    onPressed: () {},
                    bgColor: Appcolors.whiteColor,
                    height: 62,
                    width: 70),
                customButton(
                    text: "-",
                    fgColor: Appcolors.textColor,
                    onPressed: () {},
                    bgColor: Appcolors.opButtonColor,
                    height: 62,
                    width: 70),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customButton(
                  text: "4",
                  fgColor: Appcolors.textColor,
                  onPressed: () {},
                  bgColor: Appcolors.whiteColor,
                  height: 62,
                  width: 70,
                ),
                customButton(
                    text: "5",
                    fgColor: Appcolors.textColor,
                    onPressed: () {},
                    bgColor: Appcolors.whiteColor,
                    height: 62,
                    width: 70),
                customButton(
                    text: "6",
                    fgColor: Appcolors.textColor,
                    onPressed: () {},
                    bgColor: Appcolors.whiteColor,
                    height: 62,
                    width: 70),
                customButton(
                    text: "+",
                    fgColor: Appcolors.textColor,
                    onPressed: () {},
                    bgColor: Appcolors.opButtonColor,
                    height: 62,
                    width: 70),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          customButton(
                            text: "1",
                            fgColor: Appcolors.textColor,
                            onPressed: () {},
                            bgColor: Appcolors.whiteColor,
                            height: 62,
                            width: 70,
                          ),
                          customButton(
                              text: "2",
                              fgColor: Appcolors.textColor,
                              onPressed: () {},
                              bgColor: Appcolors.whiteColor,
                              height: 62,
                              width: 70),
                          customButton(
                              text: "3",
                              fgColor: Appcolors.textColor,
                              onPressed: () {},
                              bgColor: Appcolors.whiteColor,
                              height: 62,
                              width: 70),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          customButton(
                              text: "0",
                              fgColor: Appcolors.textColor,
                              onPressed: () {},
                              bgColor: Appcolors.whiteColor,
                              height: 65,
                              width: 150),
                          customButton(
                              text: ".",
                              fgColor: Appcolors.textColor,
                              onPressed: () {},
                              bgColor: Appcolors.whiteColor,
                              height: 65,
                              width: 70),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                customButton(
                    text: "=",
                    fgColor: Appcolors.textColor,
                    onPressed: () {},
                    bgColor: Appcolors.opButtonColor,
                    height: 120,
                    width: 70),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class customButton extends StatelessWidget {
  final String text;
  final Color fgColor;
  final Color bgColor;
  final double height;
  final double width;

  final void Function()? onPressed;
  customButton(
      {super.key,
      required this.text,
      required this.fgColor,
      required this.onPressed,
      required this.bgColor,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: bgColor,
            // fixedSize: const Size(70, 62),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)))),
        child: Text(
          "$text",
          style: TextStyle(fontSize: 30, color: fgColor),
        ),
      ),
    );
  }
}
