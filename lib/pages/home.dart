import 'package:flutter/material.dart';
import 'package:foodfleet2/pages/details.dart';
import 'package:foodfleet2/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, salad = false, burger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50.0, left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hello Shivam", style: Appwiget.booldTextFeildStyle()),
                  Container(
                    margin: EdgeInsets.only(right: 20.0),
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(Icons.shopping_cart, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Text("Deliciosa comida", style: Appwiget.HeadlineTextFeildStyle()),
              Text("Descubre y consigue buena comida",
                  style: Appwiget.LightTextFeildStyle()),
              SizedBox(height: 20.0),
              Container(
                margin: EdgeInsets.only(right: 20.0),
                child: showItem()),
              SizedBox(
        
                height: 30.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipOval(
                                  child: Image.network(
                                    "https://editorialtelevisa.brightspotcdn.com/dims4/default/d7c70b3/2147483647/strip/true/crop/1024x577+0+92/resize/1000x563!/quality/90/?url=https%3A%2F%2Fk2-prod-editorial-televisa.s3.us-east-1.amazonaws.com%2Fbrightspot%2F9e%2Fae%2Fafde8f674f0383d14b6a5a5aff4d%2Fensaladas.jpg",
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  "Hash de taco vegetariano",
                                  style: Appwiget.semibooldTextFeildStyle(),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text("Fresco y Saludable",
                                    style: Appwiget.LightTextFeildStyle()),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "\$25",
                                  style: Appwiget.semibooldTextFeildStyle(),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      margin: EdgeInsets.all(4),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipOval(
                                child: Image.network(
                                  "https://editorialtelevisa.brightspotcdn.com/dims4/default/d7c70b3/2147483647/strip/true/crop/1024x577+0+92/resize/1000x563!/quality/90/?url=https%3A%2F%2Fk2-prod-editorial-televisa.s3.us-east-1.amazonaws.com%2Fbrightspot%2F9e%2Fae%2Fafde8f674f0383d14b6a5a5aff4d%2Fensaladas.jpg",
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Text(
                                "Mix ensalada de verduras",
                                style: Appwiget.semibooldTextFeildStyle(),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text("Fresco y Saludable",
                                  style: Appwiget.LightTextFeildStyle()),
                              SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "\$28",
                                style: Appwiget.semibooldTextFeildStyle(),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
        
        
                  ],
                ),
              ),
                  SizedBox(
                  height: 30.0,
                ),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            "https://e7.pngegg.com/pngimages/258/710/png-clipart-caesar-salad-tuna-salad-chicken-salad-salad.png",
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 20.0,),
                          Column(children: [
                            Container(
                              width: MediaQuery.of(context).size.width/2,
                              child: Text("Ensalada de garbanzos del mediterráneo", style: Appwiget.semibooldTextFeildStyle(),)),
                              SizedBox(height: 5.0,),
                              Container(
                              width: MediaQuery.of(context).size.width/2,
                              child: Text("Queso de miel", style: Appwiget.LightTextFeildStyle(),)),
                                SizedBox(height: 5.0,),
                              Container(
                              width: MediaQuery.of(context).size.width/2,
                              child: Text("\$28", style: Appwiget.semibooldTextFeildStyle(),))
                          ],)
                        ],
                      ),
                    ),
                  ),
                ),
                  SizedBox(
                  height: 30.0,
                ),
              Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network(
                            "https://www.pnguniverse.com/wp-content/uploads/2020/10/Ensalada-con-pollo.png",
                            height: 120,
                            width: 120,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 20.0,),
                          Column(children: [
                            Container(
                              width: MediaQuery.of(context).size.width/2,
                              child: Text("Mediterranean Chickpea Salad", style: Appwiget.semibooldTextFeildStyle(),)),
                              SizedBox(height: 5.0,),
                              Container(
                              width: MediaQuery.of(context).size.width/2,
                              child: Text("Honey goot cheese", style: Appwiget.LightTextFeildStyle(),)),
                                SizedBox(height: 5.0,),
                              Container(
                              width: MediaQuery.of(context).size.width/2,
                              child: Text("\$28", style: Appwiget.semibooldTextFeildStyle(),))
                          ],)
                        ],
                      ),
                    ),
                  ),
                ),
                  SizedBox(
                  height: 30.0,
                ),
        
                    
        
        
            ],
          ),
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        // Botón de helado
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = true;
              pizza = false;
              salad = false;
              burger = false;
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: icecream ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Icon(
                Icons.icecream,
                size: 40,
                color: icecream ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        // Botón de pizza
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = false;
              pizza = true;
              salad = false;
              burger = false;
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: pizza ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Icon(
                Icons.local_pizza,
                size: 40,
                color: pizza ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        // Botón de ensalada
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = false;
              pizza = false;
              salad = true;
              burger = false;
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: salad ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Icon(
                Icons.eco,
                size: 40,
                color: salad ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
        // Botón de hamburguesa
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = false;
              pizza = false;
              salad = false;
              burger = true;
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: burger ? Colors.black : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.all(8),
              child: Icon(
                Icons.fastfood,
                size: 40,
                color: burger ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
