import 'package:flutter/material.dart';
import 'package:foodfleet2/widget/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Colors.black,
                )),
            Image.network(
              "https://www.refreshmyhealth.com/wp-content/uploads/2020/07/how-to-make-a-simple-salad-recipe-vegan-gluten-free-lunch_260-main_img_6804-lrcc.jpg",
          
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mediterránea",
                      style: Appwiget.semibooldTextFeildStyle(),
                    ),
                    Text(
                      "Ensalada De Garbanzos",
                      style: Appwiget.booldTextFeildStyle(),
                    ),
                  ],
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    if (a > 1) {
                      --a;
                    }
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  a.toString(),
                  style: Appwiget.semibooldTextFeildStyle(),
                ),
                SizedBox(
                  width: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    ++a;
                    setState(() {});
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
           SizedBox(height: 20.0,),
            Text(
              "Ensalada fresca de garbanzos con tomate cherry, pepino, cebolla morada y pimiento rojo, todo finamente picado. Aliñada con aceite de oliva virgen extra, limón y un toque de sal y pimienta, esta ensalada es una opción saludable y llena de sabor mediterráneo.",maxLines: 4,
              style: Appwiget.LightTextFeildStyle(),
            ),
            SizedBox(height: 30.0,),
            Row(children: [
              Text("El tiempo de entrega", style: Appwiget.semibooldTextFeildStyle(),),
               SizedBox(width: 25.0,),
              Icon(Icons.alarm, color: Colors.black54,),
              SizedBox(width: 5.0,),
              Text("30 min", style: Appwiget.semibooldTextFeildStyle(),)
            ],),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Total Precio", style: Appwiget.semibooldTextFeildStyle(),),
                   Text("\$28", style: Appwiget.HeadlineTextFeildStyle(),)
                ],),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text("Añadir a la cesta", style: TextStyle(color: Colors.white, fontSize: 16.0, fontFamily: 'Poppins'),),
                    SizedBox(width: 30.0,),
                    Container(

                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.grey, borderRadius: BorderRadius.circular(8)
                      ),
                      child: Icon(Icons.shopping_cart_outlined, color: Colors.white,),
                    ),
                     SizedBox(width: 10.0,),
                  ],),
                )
              ],),
            )
          ],
        ),
      ),
    );
  }
}
