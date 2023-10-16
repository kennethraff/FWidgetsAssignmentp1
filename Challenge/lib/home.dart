import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                      const Color.fromARGB(255, 134, 204, 236),
                      Colors.white
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
                          Text("Star Wars: The Last Jedi"
                          
                          ,style: TextStyle(
                            fontFamily: "Roboto",
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),),
                          Expanded(
                        child: SingleChildScrollView(
                          clipBehavior: Clip.antiAlias,
                          padding: EdgeInsets.all(8),
                          child: Text(
                            "Star Wars: The Last Jedi (also known as Star Wars: Episode VIII – The Last Jedi) is a 2017 American epic space opera film written and directed by Rian Johnson. Produced by Lucasfilm and distributed by Walt Disney Studios Motion Pictures, it is the second installment of the Star Wars sequel trilogy, following The Force Awakens (2015), and the eighth episode of the nine-part Skywalker saga. The film's ensemble cast includes Mark Hamill, Carrie Fisher, Adam Driver, Daisy Ridley, John Boyega, Oscar Isaac, Andy Serkis, Lupita Nyong'o, Domhnall Gleeson, Anthony Daniels, Gwendoline Christie, Kelly Marie Tran, Laura Dern, and Benicio del Toro. The Last Jedi follows Rey as she seeks the aid of Luke Skywalker in hopes of turning the tide for the Resistance in the fight against Kylo Ren and the First Order while General Leia Organa, Finn, and Poe Dameron attempt to escape a First Order attack on the dwindling Resistance fleet. The film features the first posthumous film performance by Fisher, who died in December 2016, and the film is dedicated to her memory",
                            style: TextStyle(
                              fontFamily: "Roboto",
                                fontSize: 18,
                                wordSpacing: 2,
                                letterSpacing: 1,
                                color: Colors.black
                                ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      )
                        ],
                      )
                    ),
                  ],
                ),
              ),
            ),
            // Add a Positioned widget to place the FloatingActionButton in the top right corner.
      Positioned(
        top: 16.0, // Adjust the top position as needed.
        right: 16.0, // Adjust the right position as needed.
        child: FloatingActionButton(
          onPressed: () {
            // Add your favorite button functionality here.
            // You can toggle the favorite status or perform any action.
          },
          child: Icon(Icons.favorite), // You can customize the icon.
          backgroundColor: Colors.red, // You can customize the background color.
        ),
      ),
          ],
        ));
  }
}
