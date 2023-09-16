import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      theme:
          ThemeData(appBarTheme: const AppBarTheme(color: Colors.yellow)),
      home: const MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: (){},
            icon: Icon(
                Icons.menu,
                color: Colors.black,
                size: 25,
            ),
        ),
        title: SizedBox(
            height: 45,
            child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        contentPadding: EdgeInsets.only(top: 5),
                        hintText: 'Buscar en Mercado Libre',
                        border: InputBorder.none
                    ),
                ),
            ),
        ),

        actions: [
            IconButton(
                onPressed: (){},
                icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                    size: 25,
                ),
            )
        ],
      ),

      body: /*Column(
        children: [Container(
          color: Colors.yellow,
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(children: [
                  Icon(
                      Icons.location_on_outlined,
                      size: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: Text('Enviar a Jose Ricardo Romero - CP 79680'),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  )
                ],
              ),
          ),
        ),*/

          SingleChildScrollView(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
              body(),
              Padding(
                padding: EdgeInsets.only(top:5, left: 20, right: 20),
              child: Card(
                  child: Container(
                    width: 400,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight ,colors: [Colors.purpleAccent, Colors.deepPurple]),
                    ),
                    child: Row(children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15, right: 70),
                            child: Text('¡Suscribete al nivel 6 por ' r'$ 99/mes!',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                          Icon(Icons.arrow_forward_ios, size: 15, color: Colors.white),
                      ],
                      ),
                    ),
                  ),
              ),

              Padding(
                padding: EdgeInsets.only(top:3, left: 20, right: 20),
                child: Card(
                  child: Container(
                    width: 400,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(children: [
                      Padding(
                        padding: EdgeInsets.only(left: 45),
                        child: Icon(Icons.delivery_dining_outlined, size: 25, color: Colors.green),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text('Envio gratis ',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Text('en millones de productos',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                          ),
                        ),
                      ),

                    ],
                    ),
                  ),
                ),
              ),

                  Column(
                    children: <Widget>[
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 30),
                          child: SizedBox(
                            width: 55,
                            child: FloatingActionButton(onPressed: (){}, backgroundColor: Colors.white,
                              child: Icon(
                                Icons.discount,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: SizedBox(
                            width: 55,
                            child: FloatingActionButton(onPressed: (){}, backgroundColor: Colors.white,
                              child: Icon(
                                Icons.shopping_basket_outlined,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: SizedBox(
                            width: 55,
                            child: FloatingActionButton(onPressed: (){}, backgroundColor: Colors.white,
                              child: Icon(
                                Icons.drive_eta_outlined,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: SizedBox(
                            width: 55,
                            child: FloatingActionButton(onPressed: (){}, backgroundColor: Colors.white,
                              child: Icon(
                                Icons.wysiwyg_outlined,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: SizedBox(
                            width: 55,
                            child: FloatingActionButton(onPressed: (){}, backgroundColor: Colors.white,
                              child: Icon(
                                Icons.add,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),

                      ],
                      ),
                      Row(children: [
                        Padding(
                          padding: EdgeInsets.only(top: 7, left: 40),
                            child: Text('Ofertas',
                              style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 10,
                              ),
                            ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 7, left: 40),
                          child: Text('Super',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 7, left: 36),
                          child: Text('Vehiculos',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 7, left: 35),
                          child: Text('Moda',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                          ),
                        ),

                        Padding(
                          padding: EdgeInsets.only(top: 7, left: 40),
                          child: Text('Ver mas',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 10,
                            ),
                          ),
                        ),
                      ],)
                    ],
                  ),

                  Padding(
                      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: Card(
                        child: Container(
                          width: 400,
                          height: 84,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Image(
                            image: AssetImage('assets/Imagen4.jpg'),
                          ),
                        ),
                      ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 20, right: 20),
                    child: Card(
                      child: Container(
                        width: 400,
                        height: 210,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                                child: Text('Visto recientemente',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ),

                            Container(
                              height: 0.5,
                              width: 400,
                              color: Colors.grey,
                            ),

                            Row(children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.only(left: 10, top: 10, bottom: 20),
                                child: SizedBox(
                                  width: 130,
                                  child: Image(
                                    image: AssetImage('assets/Canon.jpg'),
                                  ),
                                ),
                              ),

                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[

                                Padding(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: SizedBox(
                                    width: 180,
                                    child: Text('Epson U42+ Proyector Inalambrico',
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                    ),
                                  )
                                ),

                                Padding(
                                    padding: EdgeInsets.only(top: 6, left: 10, right: 10),
                                    child: SizedBox(
                                      width: 180,
                                      child: Text(r'$ 22,000',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                ),

                                  Padding(
                                      padding: EdgeInsets.only(left: 10, right: 10),
                                      child: SizedBox(
                                        width: 180,
                                        child: Text(r'12 x 1,...',
                                          style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.green,
                                          ),
                                        ),
                                      )
                                  ),

                                  Padding(
                                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 25),
                                      child: SizedBox(
                                        width: 180,
                                        child: Text('Envio gratis',
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.green,
                                          ),
                                        ),
                                      )
                                  ),


                              ],
                              )

                            ],
                            ),

                            Container(
                              height: 0.5,
                              width: 400,
                              color: Colors.grey,
                            ),

                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 17, left: 20, bottom: 10),
                                  child: Text('Ver historial de navegacion',
                                    style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                
                                Padding(
                                  padding: EdgeInsets.only(top: 8, left: 120),
                                  child: Icon(Icons.arrow_forward_ios,
                                    color: Colors.blueAccent,
                                    size: 15,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),


                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 20, right: 20),
                    child: Card(
                      child: Container(
                        width: 400,
                        height: 565,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                              child: Text('Oferta del dia',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),

                            Container(
                              height: 0.5,
                              width: 400,
                              color: Colors.grey,
                            ),

                            Padding(
                              padding: EdgeInsets.only(left: 70, top: 10, bottom: 20),
                              child: SizedBox(
                                width: 200,
                                child: Image(
                                  image: AssetImage('assets/Tablet.jpg'),
                                ),
                              ),
                            ),

                            Padding(
                                padding: EdgeInsets.only(left: 25),
                                child: SizedBox(
                                  width: 370,
                                  child: Text('Tablet Samsung Galaxy Tab A7 Lite SM-T220 8.7" 32GB plateada y 3GB de memoria RAM',
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                )
                            ),

                            Row(
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(top: 6, left: 25),
                                    child: SizedBox(
                                      width: 60,
                                      child: Text(r'$ 2,299',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                ),

                                Padding(
                                    padding: EdgeInsets.only(top: 6),
                                    child: SizedBox(
                                      width: 60,
                                      child: Text('28% OFF',
                                        style: TextStyle(
                                          fontSize: 11,
                                          color: Colors.green,
                                        ),
                                      ),
                                    )
                                ),
                              ],
                            ),

                            Padding(
                                padding: EdgeInsets.only(top: 6, left: 26, right: 10),
                                child: SizedBox(
                                  width: 180,
                                  child: Text(r'12x $191.58 sin intereses',
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                            ),

                            Row(
                              children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.only(top: 6, left: 25, bottom: 20),
                                    child: SizedBox(
                                      width: 60,
                                      child: Text('Envio gratis',
                                        style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                ),

                                Padding(
                                    padding: EdgeInsets.only(bottom: 15),
                                    child: Icon(Icons.star,
                                      color: Colors.green,
                                      size: 15,
                                    ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(top: 6, left: 3, bottom: 20),
                                  child: SizedBox(
                                    width: 60,
                                    child: Text('FULL',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),

                            Container(
                              height: 0.5,
                              width: 400,
                              color: Colors.grey,
                            ),

                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 17, left: 20, bottom: 10),
                                  child: Text('Ver todas las ofertas',
                                    style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(top: 8, left: 158),
                                  child: Icon(Icons.arrow_forward_ios,
                                    color: Colors.blueAccent,
                                    size: 15,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                      padding: EdgeInsets.only(top: 8, left: 20, right: 20),
                      child: Card(
                          child: Container(
                              width: 400,
                              height: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                              ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(top: 15, left: 20),
                                      child: SizedBox(
                                        width: 180,
                                        child: Text('HAZLO TU MISMO',
                                            style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                        ),
                                      ),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(top: 5, left: 20, bottom: 10),
                                      child: SizedBox(
                                        width: 180,
                                        child: Text('HASTA 45% DE DESCUENTO',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(top: 60, left: 20),
                                      child: SizedBox(
                                        width: 180,
                                        child: Text('VER MAS',
                                          style: TextStyle(
                                            color: Colors.blueAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: SizedBox(
                                    width: 144,
                                    child: Image(
                                      image: AssetImage('assets/Herramienta.jpg'),
                                    )
                                  ),
                                ),

                              ],
                            ),
                          ),
                      ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 20, right: 20),
                    child: Card(
                      child: Container(
                          width: 400,
                          height: 410,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                width: 400,
                                child: Image(
                                  image: AssetImage('assets/Descuentos.jpg'),
                                ),
                              ),

                              Row(
                                children: <Widget>[
                                  SizedBox(
                                    width: 86,
                                    height: 80,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Image(
                                        image: AssetImage('assets/iPhoneXR.jpg'),
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    width: 86,
                                    height: 80,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 10),
                                      child: Image(
                                        image: AssetImage('assets/iPhone8.jpg'),
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    width: 86,
                                    height: 80,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 10, right: 10),
                                      child: Image(
                                        image: AssetImage('assets/Botella.jpg'),
                                      ),
                                    ),
                                  ),

                                  SizedBox(
                                    width: 86,
                                    height: 80,
                                    child: Padding(
                                      padding: EdgeInsets.only(top: 10, right: 15),
                                      child: Image(
                                        image: AssetImage('assets/TV.jpg'),
                                      ),
                                    ),
                                  ),


                                ],
                              )
                            ],
                          ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 20, right: 20, bottom: 10),
                    child: Card(
                      child: Container(
                        width: 400,
                        height: 480,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                              child: Text('Categorias',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),

                            Container(
                              height: 0.5,
                              width: 400,
                              color: Colors.grey,
                            ),

                            Column(
                              children: <Widget>[
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                                      child: SizedBox(
                                        width: 50,
                                        child: Icon(
                                          Icons.drive_eta_outlined,
                                          size: 35,
                                          color: Colors.blueAccent,
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 20, top: 25),
                                      child: SizedBox(
                                        width: 200,
                                        child: Text('Autos, Motos y Otros'),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 90),
                                  child: Container(
                                    height: 0.5,
                                    width: 255,
                                    color: Colors.grey,
                                  ),
                                ),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                                      child: SizedBox(
                                        width: 50,
                                        child: Icon(
                                          Icons.phone_android_outlined,
                                          size: 35,
                                          color: Colors.blueAccent,
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 20, top: 25),
                                      child: SizedBox(
                                        width: 200,
                                        child: Text('Celulares y Telefonia'),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 90),
                                  child: Container(
                                    height: 0.5,
                                    width: 255,
                                    color: Colors.grey,
                                  ),
                                ),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                                      child: SizedBox(
                                        width: 50,
                                        child: Icon(
                                          Icons.person_outlined,
                                          size: 35,
                                          color: Colors.blueAccent,
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 20, top: 25),
                                      child: SizedBox(
                                        width: 200,
                                        child: Text('Ropa, Bolsas y Calzado'),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 90),
                                  child: Container(
                                    height: 0.5,
                                    width: 255,
                                    color: Colors.grey,
                                  ),
                                ),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                                      child: SizedBox(
                                        width: 50,
                                        child: Icon(
                                          Icons.single_bed_outlined,
                                          size: 35,
                                          color: Colors.blueAccent,
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 20, top: 25),
                                      child: SizedBox(
                                        width: 200,
                                        child: Text('Hogar, Muebles y Jardin'),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 90),
                                  child: Container(
                                    height: 0.5,
                                    width: 255,
                                    color: Colors.grey,
                                  ),
                                ),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                                      child: SizedBox(
                                        width: 50,
                                        child: Icon(
                                          Icons.stop_circle_outlined,
                                          size: 35,
                                          color: Colors.blueAccent,
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 20, top: 25),
                                      child: SizedBox(
                                        width: 200,
                                        child: Text('Accesorios para Vehiculos'),
                                      ),
                                    ),
                                  ],
                                ),

                                Padding(
                                  padding: EdgeInsets.only(left: 90),
                                  child: Container(
                                    height: 0.5,
                                    width: 255,
                                    color: Colors.grey,
                                  ),
                                ),

                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 20, top: 15, bottom: 15),
                                      child: SizedBox(
                                        width: 50,
                                        child: Icon(
                                          Icons.handshake_outlined,
                                          size: 35,
                                          color: Colors.blueAccent,
                                        ),
                                      ),
                                    ),

                                    Padding(
                                      padding: EdgeInsets.only(left: 20, top: 25),
                                      child: SizedBox(
                                        width: 200,
                                        child: Text('Agro'),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),



                            Container(
                              height: 0.5,
                              width: 400,
                              color: Colors.grey,
                            ),

                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(top: 17, left: 20, bottom: 10),
                                  child: Text('Ver todas las categorias',
                                    style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: EdgeInsets.only(top: 8, left: 140),
                                  child: Icon(Icons.arrow_forward_ios,
                                    color: Colors.blueAccent,
                                    size: 15,
                                  ),
                                )
                              ],
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),





            ]
            ),
          ),

        //],
      );
    //);
  }
}

Widget body(){
  final List<String> imgList = [
    'assets/Imagen1.jpg',
    'assets/Imagen2.jpg',
    'assets/Imagen3.jpg'
  ];
  return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter ,colors: [Colors.yellow, Colors.white])),
          child: CarouselSlider(
            options: CarouselOptions(autoPlay: true, aspectRatio: 2.5),
            items: imgList
                .map((item) => Padding(
              padding: const EdgeInsets.all(5.00),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), image: DecorationImage( image: AssetImage(item), fit: BoxFit.cover)),

            )))
                .toList(),
          ));
}
