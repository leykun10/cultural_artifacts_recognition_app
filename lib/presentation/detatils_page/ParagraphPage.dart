import 'package:flutter/material.dart';
class ParagraphPage extends StatefulWidget {

  const ParagraphPage({Key? key}) : super(key: key);

  @override
  _ParagraphPageState createState() => _ParagraphPageState();
}

class _ParagraphPageState extends State<ParagraphPage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      elevation: 8.0,
      child: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height*0.4,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: RichText(
                  text:TextSpan(children: [
                    TextSpan(text: "Jebena ,                         ",style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w700,
                      fontSize: 35.0,
                    )),
                    TextSpan(text: "The Jebena",style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                    )),
                    TextSpan(text: " is most commonly used in the traditional coffee ceremony known as the buna,",style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 18.0,
                    ),),
                    TextSpan(text: " where women serve coffee to their guests in small clay pots or ceramic pots"
                        " alongside an assortment of small snacks such as popcorn, peanuts and the traditional himbasha."
                        "it is usually made of clay and has a neck and pouring spout,"
                        " and a handle where the neck connects with the base. "
                        "The jebenas used in Ethiopia commonly have a spout, "
                        "whereas those ""utilized in Eritrea usually do not."
                        " It is of a medium size, with a neck, a spout and a handle, "
                        "as well as some regional variants possessing straw lids, and an extra spout to pour the coffee out of,"
                        " as well as different shaped bases.",style:TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 18.0,
                    )),

                  ])



              ),
            ),
          ),
        ),
      ],),
    );
  }
}
