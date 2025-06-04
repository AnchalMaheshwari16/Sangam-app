import 'package:flutter/material.dart';
import 'package:sangam_app/style_card.dart';
import 'package:stacked_card_carousel/stacked_card_carousel.dart';

class StackedCardDemo extends StatefulWidget {
  @override
  _StackedCardDemoState createState() => _StackedCardDemoState();
}

class _StackedCardDemoState extends State<StackedCardDemo> {
  final List<Widget> styleCards = [
    StyleCard(
      image: Image.asset("assets/images/E1.jpg"),
      title: "Kala Samwad",
      description: "It play extremely important role in motivating\n Students and ensuring their success.",
    ),
    StyleCard(
      image: Image.asset("assets/images/E.jpg"),
      title: "UIA Hackathon 2022",
      description: "The UNESCO INDIA-AFRICA Hackathon\n is an annual 36 hours International event.",
    ),
    StyleCard(
      image: Image.asset("assets/images/E7.jpg"),
      title: "Mega Orientation Program",
      description: "Smart, quick learner, and very\ndedicated to the work.",
    ),
    StyleCard(
      image: Image.asset("assets/images/g1.jpg"),
      title: "SIH'22 Winner",
      description: "Team player, hard worker, expert in\n both andriod and flutter",
    ),
    StyleCard(
      image: Image.asset("assets/images/E3.jpg"),
      title: "Internal hackathon Winners",
      description: "Flutter developer, keen learner\n very supporting. Bodyguard of our team",
    ),
    StyleCard(
      image: Image.asset("assets/images/E4.jpg"),
      title: "75th Independence Day",
      description: "Responsible team member,situation handler,\nand a sharp learner with flutter and blogs.",
    ),
    StyleCard(
      image: Image.asset("assets/images/E6.jpg"),
      title: "8th convoation",
      description: "Person with a passion for learning,\nstar blogger, punctual and \na teammate.",
    ),
    StyleCard(
      image: Image.asset("assets/images/E5.jpg"),
      title: "La Union - 2022",
      description: "Newest team member, with high passion for\nlearning very sharp,and dedicated.Need more\ntime to know about you.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        toolbarHeight: 100,
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        title: const Text(
          'Events Gallery',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
      ),
      
            body: StackedCardCarousel(
        type: StackedCardCarouselType.fadeOutStack,
        items: styleCards,
      ),
    );
  }
}
