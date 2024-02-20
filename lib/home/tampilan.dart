import 'package:flutter/material.dart';

import 'package:flutter_application_1/wigdet/product_card.dart'; // Ubah import widget ProductCard

class tampilan extends StatelessWidget {
  final List<String> catlist = [
    "All",
    "Best Seller",
    "Jaket",
    "Baju",
    "Celana"
  ];

  final List<String> image = ["jaket", "kaos"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Find your product",
                          border: InputBorder.none,
                          prefixIcon:
                              Icon(Icons.search, size: 30, color: Colors.amber),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 15),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.notifications_none,
                      size: 30,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 205,
                child: Image.asset("images/diskon.png"),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      for (int i = 0; i < catlist.length; i++)
                        Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          decoration: BoxDecoration(
                            color: catlist[i] == "All"
                                ? Color(0xFFFD725A)
                                : Color.fromARGB(255, 233, 233, 233),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            catlist[i],
                            style: TextStyle(
                              fontSize: 20,
                              color: catlist[i] == "All"
                                  ? Color(0xFFF7F8FA)
                                  : Colors.grey,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        MediaQuery.of(context).size.width / (2 * 250),
                    mainAxisSpacing: 40,
                    crossAxisSpacing: 15,
                  ),
                  itemCount: image.length,
                  itemBuilder: (_, i) {
                    return ProductCard(image[i]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
