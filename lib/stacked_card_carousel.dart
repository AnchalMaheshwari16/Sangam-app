import 'package:flutter/material.dart';

class StackedCardCarousel extends StatefulWidget {
  final List<Widget> cards;

  StackedCardCarousel({required this.cards});

  @override
  _StackedCardCarouselState createState() => _StackedCardCarouselState();
}

class _StackedCardCarouselState extends State<StackedCardCarousel> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = (_currentIndex + 1) % widget.cards.length;
        });
      },
      child: Container(
        color: Colors.transparent, // Set container color to transparent
        child: Stack(
          children: _buildCards(),
        ),
      ),
    );
  }

  List<Widget> _buildCards() {
    List<Widget> cardWidgets = [];

    for (int i = _currentIndex; i < widget.cards.length; i++) {
      double offset = i * 20.0; // Adjust the offset as needed

      cardWidgets.add(
        Positioned(
          top: offset,
          child: Transform.translate(
            offset: Offset(0.0, offset),
            child: Opacity(
              opacity: i == _currentIndex ? 1.0 : 0.5,
              child: widget.cards[i],
            ),
          ),
        ),
      );
    }

    return cardWidgets.reversed.toList(); // Reversed to show the latest card on top
  }
}
