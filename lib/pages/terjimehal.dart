import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  String fileContent = '';

  @override
  void initState() {
    super.initState();
    loadTextFile();
  }

  Future<void> loadTextFile() async {
    try {
      String data = await rootBundle.loadString('images/terjimehal.txt');
      setState(() {
        fileContent = data;
      });
    } catch (e) {
      print('Error loading text file: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text(
          "Terjimehal",
          style: TextStyle(fontFamily: 'Times New Roman', color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          // Image.asset(
          //   'images/magtym.png',
          //   width: double.infinity,
          //   height: double.infinity,
          //   fit: BoxFit.cover,
          // ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.9),
                borderRadius: BorderRadius.circular(12),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('images/pyragy.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        fileContent.isNotEmpty ? fileContent : 'Loading...',
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Times New Roman',
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
