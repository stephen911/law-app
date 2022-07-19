import 'package:flutter/material.dart';
import 'package:law_app/hompage.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(children: [
            Positioned(
              child: Container(
                padding: EdgeInsets.all(8),
                margin: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: Color(0xFFc07f00),
                  borderRadius: BorderRadius.circular(60),
                ),
                child: ClipRRect(
                  clipBehavior: Clip.hardEdge,
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    'assets/images/lawyer.jpeg',
                    // height: 70,
                    // width: 30,
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 2,
                left: 110,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          "John Osei Kwame",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        child: Text("General Lawyer",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                      ),
                      Row(
                        children: [
                          Container(
                            child: Text("4.0",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            child: Text("God's Love Associates",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          )
                        ],
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    boxShadow: <BoxShadow>[
                BoxShadow(
                    offset: Offset(0, 5), color: Colors.black, blurRadius: 6),
              ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                ))
          ]),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Container(
                    child: Text("Experience",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Container(
                    child: Text("7yrs+",
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                children: [
                  Container(
                    child: Text("Cases Won",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Container(
                    child: Text("200+",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 14)),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFFc07f00),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Text("Book Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    offset: Offset(0, 0), color: Colors.black26, blurRadius: 5),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        "About Lawyer",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                      child: Text(
                        "General",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 11,
                        ),
                      ),
                      // height: 20,
                      // width: ,
                      // width: 2,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 181, 248, 215),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),

                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(
                        color: Colors.black,
                        // fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
          Container(
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 30), child: Text("Send Message"),),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                    offset: Offset(0, 0), color: Colors.black26, blurRadius: 5),
              ],
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ), child: Center(
                child: TextField(
                  decoration: InputDecoration(
                      
                      hintText: 'Message',
                      border: InputBorder.none),
                ),
              ),),
              SizedBox(height: 20,),

              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
              child: ElevatedButton(
                  style: ButtonStyle(
                      // padding: MaterialStateProperty.all(EdgeInsets.only(left: 30)),
                      fixedSize: MaterialStateProperty.all(Size(350, 50)),
                      backgroundColor: MaterialStateProperty.all(Color(0xFFc07f00))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: Text(
                    "Submit",
                    style: TextStyle(
                        color: Colors.white),
                  )),
            )
        ],
      )),
    );
  }
}
