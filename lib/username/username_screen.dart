import 'package:flutter/material.dart';
// import 'package:flutter_application_13/home_page/home_page.dart';
import 'package:flutter_application_13/view/bottom_nav_screen/bottom_nav.dart';

class Username extends StatefulWidget {
  const Username({super.key});

  @override
  State<Username> createState() => _UsernameState();
}

class _UsernameState extends State<Username> {
  List<Image> Myimage = [
    Image.asset(
      "assets/Group 66.png",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "assets/Group 67.png",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "assets/Group 69.png",
      fit: BoxFit.fill,
    ),
    Image.asset(
      "assets/Group 68.png",
      fit: BoxFit.fill,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 130, top: 20),
                  child: Container(
                      height: 40,
                      width: 110,
                      child: Image.asset("assets/logos_netflix (1).png")),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100, top: 20),
                  child: Container(
                      height: 30,
                      width: 30,
                      child: Image.asset("assets/bx_bxs-pencil.png")),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
                child: GridView.builder(
              padding: EdgeInsets.all(65),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 25,
                mainAxisSpacing: 50,
              ),
              itemCount: 4,
              itemBuilder: (context, index) => InkWell(
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => bottomnav(),
                        ),
                      ),
                  child: Container(
                    child: Myimage[index],
                    height: 40,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.transparent),
                  )),
            )),
            Padding(
              padding: const EdgeInsets.only(right: 150, bottom: 150),
              child: Column(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/Group 1.png",
                    ),
                    height: 35,
                    width: 35,
                    color: Colors.transparent,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Image.asset("assets/Add Profile.png"),
                  )
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar());
  }
}
