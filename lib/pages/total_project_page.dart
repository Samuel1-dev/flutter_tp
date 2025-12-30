import 'package:flutter/material.dart';
import 'package:tp_flutter/layaouts/app_bar.dart';

class TotalProjectPage extends StatefulWidget {
  const TotalProjectPage({super.key});

  @override
  State<TotalProjectPage> createState() => _TotalProjectPageState();
}

class _TotalProjectPageState extends State<TotalProjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppbar(), // ton AppBar existant
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ===== Partie haute (profil + boutons) =====
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // Profil principal
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/logo_projet.png'), // à remplacer
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nom du projet',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: List.generate(
                                  5,
                                  (index) => Icon(
                                    index < 4 ? Icons.star : Icons.star_half,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Description courte du projet',
                                style: TextStyle(color: Colors.grey[700]),
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Localisation • Langue • Équipe',
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    // Boutons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.message),
                          label: Text('Message'),
                        ),
                        ElevatedButton.icon(
                          onPressed: () {},
                          icon: Icon(Icons.add),
                          label: Text('New Contract'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // ===== Fin partie haute =====
            
            SizedBox(height: 24),
            // Espace pour la partie stats, skills et projets de Jordane
          ],
        ),
      ),
    );
  }
}
