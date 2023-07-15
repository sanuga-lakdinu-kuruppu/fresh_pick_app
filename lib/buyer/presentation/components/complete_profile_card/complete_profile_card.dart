import 'package:flutter/material.dart';

class CompleteProfileMessageCard extends StatelessWidget {
  const CompleteProfileMessageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: const Color.fromRGBO(255, 245, 213, 1.0),
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        // semanticContainer: true,
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.only(right: 12, left: 12),
          child: SizedBox(
            width: 350,
            height: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                      ),
                      RichText(
                        text: const TextSpan(
                            text: 'Complete your profile',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            children: [
                              WidgetSpan(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.error_outline,
                                    size: 20,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ]),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                      ),
                      const Text(
                        'Fully completed profiles are eligible for promotions and rewards. Specially, if you are not completed your profile and verification process, you will not be able to post your productions.',
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                        textAlign: TextAlign.justify,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: '60 %',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(223, 173, 16, 1.0),
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' COMPLETED',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 5),
                      ),
                      ClipPath(
                        clipper: ShapeBorderClipper(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: const LinearProgressIndicator(
                          minHeight: 20,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Color.fromRGBO(223, 173, 16, 1.0),
                          ),
                          value: 0.6,
                          backgroundColor: Color.fromRGBO(253, 237, 190, 1.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
