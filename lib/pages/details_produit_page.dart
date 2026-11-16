import 'package:flutter/material.dart';

class DetailsProduitPage extends StatelessWidget {
  final String nom;
  final double prix;

  const DetailsProduitPage({
    super.key,
    required this.nom,
    required this.prix,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Détails du produit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(nom),
            Text('$prix \$'),
          ],
        ),
      ),
    );
  }
}