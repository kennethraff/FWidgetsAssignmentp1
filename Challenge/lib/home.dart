import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFavorite = false; // tombol ganti2 status favorit

  void toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Movie Detail')),
        body: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromARGB(255, 0, 145, 236),
                      Color.fromARGB(255, 242, 8, 0)
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset(
                          'images/foto1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(4),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 3),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: AspectRatio(
                                      aspectRatio: 1.0,
                                      child: Image.asset(
                                        'images/person1.jpeg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 3),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: AspectRatio(
                                      aspectRatio: 1.0,
                                      child: Image.asset(
                                        'images/person2.jpeg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 3),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: AspectRatio(
                                      aspectRatio: 1.0,
                                      child: Image.asset(
                                        'images/person3.jpeg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 3),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: AspectRatio(
                                      aspectRatio: 1.0,
                                      child: Image.asset(
                                        'images/person4.jpeg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 3),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: AspectRatio(
                                      aspectRatio: 1.0,
                                      child: Image.asset(
                                        'images/person1.jpeg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 4,
                        child: Column(
                          children: [
                            Text(
                              "Star Wars: The Last Jedi",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                clipBehavior: Clip.antiAlias,
                                padding: EdgeInsets.all(8),
                                child: Text(
                                  "Star Wars: The Last Jedi (also known as Star Wars: Episode VIII – The Last Jedi) is a 2017 American epic space opera film written and directed by Rian Johnson. Produced by Lucasfilm and distributed by Walt Disney Studios Motion Pictures, it is the second installment of the Star Wars sequel trilogy, following The Force Awakens (2015), and the eighth episode of the nine-part Skywalker saga. The film's ensemble cast includes Mark Hamill, Carrie Fisher, Adam Driver, Daisy Ridley, John Boyega, Oscar Isaac, Andy Serkis, Lupita Nyong'o, Domhnall Gleeson, Anthony Daniels, Gwendoline Christie, Kelly Marie Tran, Laura Dern, and Benicio del Toro. The Last Jedi follows Rey as she seeks the aid of Luke Skywalker in hopes of turning the tide for the Resistance in the fight against Kylo Ren and the First Order while General Leia Organa, Finn, and Poe Dameron attempt to escape a First Order attack on the dwindling Resistance fleet. The film features the first posthumous film performance by Fisher, who died in December 2016, and the film is dedicated to her memory",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      fontSize: 18,
                                      color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 15.0, //margin atas
              right: 10.0, //margin kanan
              child: FloatingActionButton(
                onPressed: () {
                  toggleFavorite(); // button favorit dari atas
                },
                child: Icon(
                  isFavorite
                      ? Icons.favorite
                      : Icons
                          .favorite_border,
                  color: isFavorite
                      ? Colors.red
                      : Colors.black, 
                ),
                backgroundColor: isFavorite
                    ? Colors.white
                    : Colors.white60, //biar transparan 60%
              ),
            ),
          ],
        ));
  }
}
