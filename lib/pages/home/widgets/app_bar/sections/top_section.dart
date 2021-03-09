import 'package:flutter/material.dart';
import 'package:interface_udemy/breakpoints.dart';
import 'package:interface_udemy/pages/home/widgets/app_bar/custom_search_field.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        final maxWidth = constraint.maxWidth;

        if (maxWidth >= 1200) {
          return AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              //fit: StackFit.expand,
              children: [
                AspectRatio(
                  aspectRatio: 3.4,
                  child: Image.network(
                    "https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940%22",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 50,
                  child: Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      padding: EdgeInsets.all(22),
                      width: 450,
                      child: Column(
                        children: [
                          Text(
                            "Aprenda Flutter com este curso",
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$22,90! Qualidade garantida",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(height: 16),
                          CustomSearchField()
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }

        if(maxWidth >= mobileBreakPoint){
          return SizedBox(
            height: 320,
            child: Stack(
             // fit: StackFit.expand,
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: Image.network(
                    "https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940%22",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child:Card(
                    color: Colors.black,
                    elevation: 8,
                    child: Container(
                      padding: EdgeInsets.all(22),
                      width: 350,
                      child: Column(
                        children: [
                          Text(
                            "Aprenda Flutter com este curso",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$22,90! Qualidade garantida",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(height: 16),
                          CustomSearchField()
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }

        return Column(
          children: [
            AspectRatio(
              aspectRatio: 3.4,
              child: Image.network(
                "https://images.pexels.com/photos/892757/pexels-photo-892757.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940%22",
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Aprenda Flutter com este curso",
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Bora aprender Flutter com o professor Daniel Ciolfi! Cursos por apenas R\$22,90! Qualidade garantida",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white
                    ),
                  ),
                  SizedBox(height: 16),
                  CustomSearchField()
                ],
              ),
            )

          ],
        );
      },
    );
  }
}
