import 'package:flutter/material.dart';
import 'package:flutterwebscraping/screens/homePage.dart';

/// Ce projet consiste à faire un monitoring des emplois publiés par les partenaires d'une entreprises
/// afin d'augmenter la performance commerciale de la société.
/// Dashbord consistera
///  - 1 Une page d'inscription du profil de la société
/// Une page d'importatation de la liste des partenaires qu'on veut surveiller
/// Une option de saisie de ces partenaires
/// L'application affichera le nombre totale de poste à pouvoir au sein de l'entreprise du partenaire
/// dans un circle ou card flutter widget
/// L'application permettant d'afficher le

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: IconThemeData(
          size: 100,
          color: Colors.amberAccent,
        ),
        scaffoldBackgroundColor: Colors.red,
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

///Tableau de bord en temps réel : Montre le nombre total d'emplois actuellement en ligne.
///Répartition par type de poste : Graphique indiquant les différents types d'emplois publiés (par exemple, ingénieur, chef de projet, analyste).
///Tendances temporelles : Graphique montrant comment le nombre d'emplois a évolué au fil du temps
///Statistiques sur les clients : Informations sur les clients qui ont publié des emplois, le nombre d'offres par client, et leurs secteurs d'activité.
///Mots clés populaires : Liste des compétences et mots clés les plus recherchés par les clients
///Sources d'emploi : Les sites d'emploi les plus utilisés pour diffuser les annonces.
///Indicateurs de performance clés (KPI) : Mesures importantes, comme le taux de conversion des candidatures et le temps de pourvoi d'un poste.
