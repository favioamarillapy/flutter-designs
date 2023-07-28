import 'package:flutter/material.dart';
import 'package:flutter_designs/widget/composite_background.dart';
import 'package:flutter_designs/widget/composite_cards.dart';
import 'package:flutter_designs/widget/composite_navigaton_bar.dart';
import 'package:flutter_designs/widget/composite_title.dart';

class CompositeDesignScreen extends StatelessWidget {
  const CompositeDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          CompositeBackgroundWidget(),
          _Body(),
        ],
      ),
      bottomNavigationBar: CompositeNavigationBarWidget(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          CompositeTitleWidget(),
          CompositeCardsWidget(),
        ],
      ),
    );
  }
}
