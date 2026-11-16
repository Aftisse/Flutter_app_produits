import 'package:flutter/material.dart';
import '../models/produit.dart';

class ListeProduitsPage extends StatelessWidget {
  ListeProduitsPage({super.key});

  final List<Produit> produits = [
    Produit(
      nom: 'Ordinateur',
      prix: 1200.0,
      description: 'Ordinateur portable',
    ),
    Produit(
      nom: 'Téléphone',
      prix: 800.0,
      description: 'Téléphone intelligent',
    ),
    Produit(
      nom: 'Clavier',
      prix: 50.0,
      description: 'Clavier sans fil',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des produits'),
      ),
      body: ListView.builder(
        itemCount: produits.length,
        itemBuilder: (context, index) {
          final produit = produits[index];

          return ListTile(
            title: Text(produit.nom),
            subtitle: Text('${produit.prix} \$'),
          );
        },
      ),
    );
  }
}