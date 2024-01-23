import 'package:flutter/material.dart';
import 'package:poetry_app/pages/carousel_slider.dart';
import 'package:poetry_app/pages/shygar.dart';
import 'package:poetry_app/pages/terjimehal.dart';


class BodyPage extends StatefulWidget {
  const BodyPage({super.key});

  @override
  State<BodyPage> createState() => _BodyPageState();
}

class _BodyPageState extends State<BodyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text(
          "Magtmguly Pyragy",
          style: TextStyle(fontFamily: 'Times New Roman', color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Carusel(),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => const Goshgy1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: 100,
                      width: double.infinity,
                      child: const Center(
                        child: Text(
                          "Pähim-paýhas ummany\n   Magtymguly Pyragy",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman',
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: InkWell(
                //     onTap: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => const Goshgy1()));
                //     },
                //     child: Container(
                //       decoration: BoxDecoration(
                //         color: Colors.white.withOpacity(0.7),
                //         borderRadius: BorderRadius.circular(12),
                //         boxShadow: [
                //           BoxShadow(
                //             color: Colors.grey.withOpacity(0.5),
                //             spreadRadius: 5,
                //             blurRadius: 7,
                //             offset: Offset(0, 3), // changes position of shadow
                //           ),
                //         ],
                //       ),
                //       height: 100,
                //       width: double.infinity,
                //       child: const Center(
                //         child: Text(
                //           "Şygyrlar",
                //           style: TextStyle(
                //             fontWeight: FontWeight.bold,
                //             fontFamily: 'Times New Roman',
                //             fontSize: 24,
                //           ),
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Shygar()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: 100,
                      width: double.infinity,
                      child: const Center(
                        child: Text(
                          "Ýylyň şygary barada...",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman',
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const About()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      height: 100,
                      width: double.infinity,
                      child: const Center(
                        child: Text(
                          "Terjimehal",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Times New Roman',
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
