import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class DetailPage extends StatefulWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int number = 30;
  List<String> names = ["ahmed", "khuzaifa", "Muneeb", "zulfiqar"];
  List<int> price = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        //color: Colors.amber,
        child: Stack(
          children: [
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: Colors.blue,
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap:(){
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Details",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 230),
              height: 1000,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
              child: Padding(
                padding: const EdgeInsets.only(top: 100, left: 10,right: 10,bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Salman Bowl",
                      style: TextStyle(fontSize: 25),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$24.00",
                          style: TextStyle(fontSize: 20),
                        ),
                        // SizedBox(width: 90,),
                        Text(
                          "|",
                          style: TextStyle(fontSize: 20),
                        ),
                        // SizedBox(width: 90,),
                        Container(
                            width: 120,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  child: Icon(Icons.add,color: Colors.white,),
                                  onTap: () {
                                    setState(() {
                                      number++;
                                    });
                                  },
                                ),
                                Text("$number",style: TextStyle(color: Colors.white),),
                                InkWell(
                                  child: Text(
                                    "-",
                                    style: TextStyle(fontSize: 30,color: Colors.white),
                                  ),
                                  onTap: () {
                                    setState(() {
                                     if(number>0){
                                       number--;
                                     }
                                    });
                                  },
                                )
                              ],
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      height: 150,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: names.length,
                          itemBuilder: (ctx, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8),
                              child: Container(
                                width: 100,
                                decoration: BoxDecoration(
                                  color: Colors.cyan,
                                  border: Border.all(
                                      width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Text(names[index].toString()),
                                      Text(
                                        "khan",
                                      ),
                                      Text(
                                        "120s",
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 50,
                        width: 300,
                        child: Center(child: Text("\$40" , style: TextStyle(color: Colors.white, fontSize: 15),)),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 200,
              left: 0,
              right: 0,
              child: Align(
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(
                    "assets/plate5.png",
                    
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
