import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ParagraphPage extends StatefulWidget {
  final String? label;
  final String? description;
  const ParagraphPage({Key? key, this.label,this.description}) : super(key: key);

  @override
  _ParagraphPageState createState() => _ParagraphPageState();
}

class _ParagraphPageState extends State<ParagraphPage> {
  var description3="Messob is a cultural symbol for Ethiopia and Eritrea. Made from locally grown and partially dyed grass and palm leaves known for strength and durability. You welcome the naturally grown, naturally made, and embroidered with a technique that lasted thousands of years. "
      "Each color is guaranteed to last for decades and safe for your home"
      "It is used mainly as a serving tray and as a cultural decorative item to bring in a beautiful and vibrant color to your home or your Ethio-Eritrean cultural themes."
  "Use them for your home and give them as a gift for your loved ones. No statement than letting them own a non-duplicated unique art that brings the cultural touches home.";
  var description1= "The kirar is a bowl-lyre chordophone of the Amhara, Oromo, and Tigrinya, Afro-Asiatic-speaking peoples of northern and central Ethiopia and Eritrea. In the past it was associated with male, wandering, semi-professional village minstrels called azmari, but today the krar is also heard played by professional urban musicians, including females, and is taught in educational institutions. It is constructed in a variety of sizes with a range of neck-and-yoke designs that incorporate different types of tuning mechanisms. It can be played solo, in which case its performer is often also a singer, and is also heard in combination with groups of singers and other traditional and modern instruments. When incorporated into contemporary urban popular music ensembles, it can be amplified. The krar is considered a secular instrument and is often contrasted with the other main traditional Ethiopian lyre, the much larger, box-resonated begena (or beganna), which is viewed as a semi-sacred instrument because it is used to accompany verse and poetry praising God. Legend has it that, while the begena was given by God to the Biblical King David, the krar was a distorted imitation of it created by the scheming devil and given to mankind to play as they enjoyed worldly pleasures";
  var description = "Jebena is most commonly used in the traditional coffee ceremony known as the buna"
      "where women serve coffee to their guests in small clay pots or ceramic pots"
      " alongside an assortment of small snacks such as popcorn, peanuts and the traditional himbasha."
      "it is usually made of clay and has a neck and pouring spout,"
      " and a handle where the neck connects with the base. "
      "The jebenas used in Ethiopia commonly have a spout, "
      "whereas those ""utilized in Eritrea usually do not."
      " It is of a medium size, with a neck, a spout and a handle, "
      "as well as some regional variants possessing straw lids, and an extra spout to pour the coffee out of,"
      " as well as different shaped bases.";

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 20.0),
        child: Text(widget.label!,style: TextStyle(fontSize: 30),),
      ),
      Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10.0),
            child: Card(
              margin: EdgeInsets.symmetric(vertical: 0,horizontal: 10),
              elevation: 8,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                    child: RichText(
                        textAlign: TextAlign.justify,
                        text:TextSpan(children: [
                          TextSpan (

                              text: widget.description,style:GoogleFonts.lato(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 21.0,
                          )),
                        ])
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ],);
  }
}
