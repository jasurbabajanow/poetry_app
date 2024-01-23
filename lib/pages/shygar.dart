import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Shygar extends StatefulWidget {
  const Shygar({super.key});

  @override
  State<Shygar> createState() => _ShygarState();
}

class _ShygarState extends State<Shygar> {
  String fileContent = '';
  @override
  void initState() {
    super.initState();
    loadTextFile();
  }

  Future<void> loadTextFile() async {
    try {
      String data = await rootBundle.loadString('images/shygar.txt');
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
      // endDrawer: Drawer(
      //   child: ListView(
      //     // Important: Remove any padding from the ListView.
      //     padding: EdgeInsets.zero,
      //     children: [
      //       DrawerHeader(
      //         decoration: const BoxDecoration(color: Colors.green),
      //         child: Column(
      //           children: [
      //             Image.asset(
      //               'images/sygar.png',
      //               height: 80,
      //               width: 80,
      //             ),
      //             const Text(
      //               'Magtymguly Pyragy',
      //               style:
      //                   TextStyle(fontFamily: 'Times New Roman', fontSize: 20),
      //             ),
      //             const Text(
      //               '(1724-1807)',
      //               style:
      //                   TextStyle(fontFamily: 'Times New Roman', fontSize: 14),
      //             ),
      //           ],
      //         ),
      //       ),
      //       ListTile(
      //         leading: const Icon(
      //           Icons.list,
      //           size: 28,
      //           color: Colors.black,
      //         ),
      //         title: const Text(
      //           'Şygyrlar',
      //           style: TextStyle(
      //             fontFamily: 'Times New Roman',
      //             fontSize: 18,
      //           ),
      //         ),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => const Goshgy1()));
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(
      //           Icons.newspaper,
      //           size: 28,
      //           color: Colors.black,
      //         ),
      //         title: const Text(
      //           'Ýylyň şygary barada',
      //           style: TextStyle(
      //             fontFamily: 'Times New Roman',
      //             fontSize: 18,
      //           ),
      //         ),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => const Shygar()));
      //         },
      //       ),
      //       ListTile(
      //         leading: const Icon(
      //           Icons.text_fields_outlined,
      //           size: 28,
      //           color: Colors.black,
      //         ),
      //         title: const Text(
      //           'Terjimehal',
      //           style: TextStyle(
      //             fontFamily: 'Times New Roman',
      //             fontSize: 18,
      //           ),
      //         ),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => const About()));
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text(
          "Şygar barada",
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
                    Image.asset('images/sygar.png'),
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
          )
        ],
      ),
    );
  }
}
