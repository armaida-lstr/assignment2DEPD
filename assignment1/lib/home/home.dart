import 'package:flutter/material.dart';
import 'package:assignment1/home/booking.dart';
import 'package:assignment1/main.dart';

IconData icon = Icons.favorite_border;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.blue.shade300, Colors.white],
              ),
            ),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Flexible(
                  flex: 3,
                  child: Image.asset(
                    'assets/images/hbatu.jpg',
                    width: double.infinity,
                    height: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 5, right: 5, bottom: 3),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/foto1.jpg',
                              width: 110,
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/foto2.jpg',
                              width: 110,
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/foto3.jpg',
                              width: 110,
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/foto4.jpg',
                              width: 110,
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/foto5.jpg',
                              width: 110,
                              height: 110,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      'Welcome to Golden Tulip Holland Batu',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Calibri',
                          fontWeight: FontWeight.w700,
                          wordSpacing: 0),
                    ),
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              "Terletak di kota Batu, 200 meter dari Taman Jatim 2, Golden Tulip Holland Resort Batu menawarkan akomodasi dengan taman bermain anak-anak dan kolam renang terbuka dengan seluncuran air. Anda dapat menikmati hidangan di restoran dan WiFi gratis dapat diakses di semua kamar. Tempat parkir pribadi tersedia gratis di lokasinya. Setiap kamar ber-AC dilengkapi dengan balkon pribadi yang menghadap ke kota, atau pemandangan Gunung Arjuna atau Gunung Panderman. Kamar mandi pribadinya dilengkapi dengan jubah mandi dan sandal. Tersedia juga resepsionis 24 jam dan layanan pramutamu di akomodasi. Staf juga dapat membantu mengatur acara perjamuan dan pertemuan. Jatim Park 1 berjarak 700 meter dari Golden Tulip Holland Resort Batu, sedangkan Batu Night Spectacular berjarak 1,1 km. Bandara terdekat adalah Bandara Abdul Rachman Saleh, 21 km dari lokasi akomodasi.",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Century',
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 15.0, right: 15.0),
              child: FloatingActionButton.extended(
                backgroundColor: const Color(0xff03dac6),
                foregroundColor: Colors.black,
                onPressed: () {
                  // Respond to button press
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Booking()));
                },
                // icon: Icon(Icons.add),
                label: Text('Booking Now'),
              ))
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: FloatingActionButton(
          onPressed: () {
            setState(() {
              icon = icon == Icons.favorite
                  ? Icons.favorite_border
                  : Icons.favorite;
            });
          },
          tooltip: 'Favorite',
          backgroundColor: Colors.white,
          foregroundColor: Colors.red,
          child: Icon(icon),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
