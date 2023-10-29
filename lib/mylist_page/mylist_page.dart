import 'package:flutter/material.dart';
import 'package:flutter_application_13/Tvshows_page/tvshows_page.dart';
import 'package:flutter_application_13/movies_page/movies_page.dart';
import 'package:flutter_application_13/view/bottom_nav_screen/bottom_nav.dart';

class mylistpage extends StatefulWidget {
  const mylistpage({super.key});

  @override
  State<mylistpage> createState() => _mylistpageState();
}

class _mylistpageState extends State<mylistpage> {
  List listImage = [
    Image.asset("assets/pop2.png", fit: BoxFit.cover),
    Image.asset("assets/pop3.png", fit: BoxFit.cover),
    Image.asset("assets/Rectangle 26.png", fit: BoxFit.cover),
    Image.asset("assets/top1.png", fit: BoxFit.cover),
    Image.asset("assets/trnd3.png", fit: BoxFit.cover),
    Image.asset("assets/trnd2.png", fit: BoxFit.cover),
    Image.asset("assets/top3.png", fit: BoxFit.cover),
    Image.asset("assets/top2.png", fit: BoxFit.cover),
    Image.asset("assets/trnd1.png", fit: BoxFit.cover),
    Image.asset("assets/tvshows1.png", fit: BoxFit.cover),
    Image.asset("assets/pop1.png", fit: BoxFit.cover),
    Image.asset("assets/pop4.png", fit: BoxFit.cover),
    Image.asset("assets/mylist1.png", fit: BoxFit.cover),
    Image.asset("assets/mylist2.png", fit: BoxFit.cover),
    Image.asset("assets/mylist3.png", fit: BoxFit.cover),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 60,
                width: 60,
                child: Image.asset("assets/logos_netflix-icon.png"),
              ),
              DropdownButton(
                  dropdownColor: Colors.black,
                  hint: Text("MyList",
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                  items: [
                    DropdownMenuItem(
                        value: "",
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => bottomnav(),
                              )),
                          child: Text(
                            "All",
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                    DropdownMenuItem(
                        value: "",
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => tvshowsPage(),
                              )),
                          child: Text("Tv shows",
                              style: TextStyle(color: Colors.white)),
                        )),
                    DropdownMenuItem(
                        value: "",
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => moviesPage(),
                              )),
                          child: Text("Movies",
                              style: TextStyle(color: Colors.white)),
                        )),
                    DropdownMenuItem(
                        value: "",
                        child: Text("My List",
                            style: TextStyle(color: Colors.white))),
                  ],
                  onChanged: (value) {}),
            ],
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(7),
            child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 150),
                itemCount: 15,
                itemBuilder: (context, index) => Container(
                      child: listImage[index],
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.white,
                      ),
                      height: 161,
                      width: 40,
                    )),
          ))
        ],
      ),
    );
  }
}
