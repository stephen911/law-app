import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:law_app/categoryModel.dart';
import 'package:law_app/lawyerCard.dart';
import 'package:law_app/notification.dart';
import 'package:law_app/profile.dart';
import 'package:law_app/search.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  final controller = ScrollController();
  double offset = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(onScroll);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  void onScroll() {
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }

 

  @override
  Widget build(BuildContext context) {
      final List<Widget> screens = [SafeArea(
          child: SingleChildScrollView(
        controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Text("Hello Fred"),
            ),
            Container(
              padding: EdgeInsets.only(left: 15, bottom: 15),
              child: Text("Let's help you find a lawyer",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              width: double.infinity,
              height: 40,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 247, 247, 247), borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          /* Clear the search field */
                        },
                      ),
                      hintText: 'Search...',
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text("Category",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Text("See All",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              clipBehavior: Clip.none,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  CategoryModel(
                    title: "General",
                  ),
                  CategoryModel(
                    title: "Family",
                  ),
                  CategoryModel(
                    title: "Crime",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: Text("Top Lawyers",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: Text("View All",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      )),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            LawyerCard(
              title: "General",
              type: "Family",
              rating: "4.5",
              firm: "Peneal Legal Consult",
              location: "Amasaman",
            ),
            LawyerCard(
              title: "General",
              type: "Family",
              rating: "4.5",
              firm: "Peneal Legal Consult",
              location: "Amasaman",
            ),
            LawyerCard(
              title: "General",
              type: "Family",
              rating: "4.5",
              firm: "Peneal Legal Consult",
              location: "Amasaman",
            ),
            LawyerCard(
              title: "General",
              type: "Family",
              rating: "4.5",
              firm: "Peneal Legal Consult",
              location: "Amasaman",
            ),
            LawyerCard(
              title: "General",
              type: "Family",
              rating: "4.5",
              firm: "Peneal Legal Consult",
              location: "Amasaman",
            ),
            LawyerCard(
              title: "General",
              type: "Family",
              rating: "4.5",
              firm: "Peneal Legal Consult",
              location: "Amasaman",
            ),
          ],
        ),
      )), Search(), NotificationPage(), Profile()];
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.perm_contact_calendar,
                color: Colors.black,
              ))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: DecorationImage(
                        image: Image.asset("assets/images/justice.png").image,
                        fit: BoxFit.cover)),
                child: const Opacity(
                  opacity: 0.0,
                  child: Text(
                    "Stedap News",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      //color: Colors.blue,
                    ),
                  ),
                )),
            ListTile(
              title: const Text(
                "Home",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              leading: const Icon(Icons.home, color: Colors.blueAccent),
              onTap: () {
                // print("home");
                Navigator.pop(context);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            ),
            ListTile(
                title: const Text(
                  "Send Us a mail",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                leading: const Icon(Icons.mail, color: Colors.blueAccent),
                onTap: () {
                  // print("mail");
                  // mail();
                  Navigator.pop(context);
                }),
            // ListTile(
            //     title: Text("Send Us a message"),
            //     leading: Icon(Icons.message, color: Colors.blueAccent),
            //     onTap: () {
            //       print("message");
            //       Navigator.pop(context);
            //     }),

            ListTile(
                title: const Text(
                  "Visit Us",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                leading: const Icon(Icons.explore, color: Colors.blueAccent),
                onTap: () {
                  // print("visit");
                  // mail();
                  Navigator.pop(context);
                  const url = "http://www.stedap1.site.live";
                  // launchUrl(url);
                }),
            ListTile(
                title: const Text(
                  "Call Us",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                leading: const Icon(Icons.call, color: Colors.blueAccent),
                onTap: () {
                  // print("Call Made");
                  // call();
                  Navigator.pop(context);
                }),
            ListTile(
                title: const Text(
                  "Close",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                leading:
                    const Icon(Icons.exit_to_app, color: Colors.blueAccent),
                onTap: () {
                  // print("add people");
                  Navigator.pop(context);
                })
          ],
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
              // selectedItemColor: Colors.black,
              // unselectedItemColor: Colors.green,
              backgroundColor: Colors.white, //Color(0xFF0731aa),
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.home,
                    color: Color(0xff999999),
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.search,
                    color: Color(0xff999999),
                  ),
                  label: "Search",
                ),
                
                BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.calendar_month,
                    color: Color(0xff999999),
                  ),
                  label: "Notifcation",
                ),
                BottomNavigationBarItem(
                  icon: const Icon(
                    Icons.person,
                    color: Color(0xff999999),
                  ),
                  label: "Profile",
                ),
              ],
              currentIndex: selectedIndex,
              onTap: onTabTapped,
            ),
            body: screens[selectedIndex]);
  }
}
