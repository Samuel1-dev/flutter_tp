import 'package:flutter/material.dart';
import 'package:tp_flutter/layaouts/app_bar.dart';

class ProjectHourPage extends StatefulWidget {
  const ProjectHourPage({super.key});

  @override
  State<ProjectHourPage> createState() => _ProjectHourPageState();
}

class _ProjectHourPageState extends State<ProjectHourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  backgroundColor: const Color(0xFF0D0D1E),
      appBar: const GlobalAppbar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- Barre de Recherche ---
            TextField(
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: "Search",
                hintStyle: const TextStyle(color: Colors.white38),
                prefixIcon: const Icon(Icons.search, color: Colors.white38),
                suffixIcon: const Icon(Icons.tune, color: Colors.white38),
                filled: true,
                fillColor: Colors.white.withOpacity(0.05),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 25),

            // --- Menu Onglets (C'est ici que l'alignement est géré) ---
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildTabItem("Task Progress", false),
                  const SizedBox(width: 25),
                  _buildTabItem("Projects", true), // Sélectionné (barre indigo en dessous)
                  const SizedBox(width: 25),
                  _buildTabItem("Members", false),
                  const SizedBox(width: 25),
                  _buildTabItem("Others", false),
                ],
              ),
            ),
            const SizedBox(height: 25),

            // --- Liste des Projets ---
            _buildProjectCard(
              title: "Startup project",
              due: "Mar 25",
              progress: 0.45,
              imageUrl: 'assets/première_image.jpeg',
                
              ),
            _buildProjectCard(
              title: "Agency Branding project",
              due: "Mar 25",
              progress: 0.45,
              imageUrl: 'assets/deuxième_image.jpeg',
                
              ),

               _buildProjectCard(
              title: "Startup project",
              due: "Mar 25",
              progress: 0.45,
              imageUrl: 'assets/troisième_image.jpeg',
                
              ),
            
          ],
        ),
      ),
    );
  }

  // Cette fonction gère l'affichage de chaque mot du menu
  Widget _buildTabItem(String title, bool isActive) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.white38,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
            fontSize: 15,
          ),
        ),
        if (isActive)
          Container(
            margin: const EdgeInsets.only(top: 4),
            height: 2,
            width: 25,
            color: Colors.indigoAccent,
          ),
      ],
    );
  }

  Widget _buildProjectCard({
    required String title,
    required String due,
    required double progress,
    required String imageUrl,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF161629),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
            child: Image.asset(
              imageUrl,
              height: 140,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 140,
                color: Colors.white10,
                child: const Icon(Icons.broken_image, color: Colors.white24),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title, style: const TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold)),
                    const Icon(Icons.more_vert, color: Colors.white70),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Icon(Icons.access_time, size: 14, color: Colors.white38),
                    const SizedBox(width: 4),
                    Text("Due: $due", style: const TextStyle(color: Colors.white38, fontSize: 13)),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.lightBlue.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text("High", style: TextStyle(color: Colors.lightBlueAccent, fontSize: 11, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Project Progress", style: TextStyle(color: Colors.white54, fontSize: 13)),
                    Text("${(progress * 100).toInt()}%", style: const TextStyle(color: Colors.white, fontSize: 13)),
                  ],
                ),
                const SizedBox(height: 8),
                LinearProgressIndicator(
                  value: progress,
                  backgroundColor: Colors.white12,
                  color: Colors.indigoAccent,
                  minHeight: 6,
                  borderRadius: BorderRadius.circular(10),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 12, 
                      backgroundColor: Colors.white10, 
                      child: Icon(Icons.rocket_launch, size: 14, color: Colors.green)
                    ),
                    const SizedBox(width: 8),
                    const Text("Orbix Studio", style: TextStyle(color: Colors.white70)),
                    const Spacer(),
                    SizedBox(
                      width: 90,
                      height: 25,
                      child: Stack(
                        children: [
                          Positioned(left: 0, child: _buildAvatar("assets/img_visage3.jpg")),
                          Positioned(left: 15, child: _buildAvatar("assets/img_visage4.jpg")),
                          Positioned(left: 30, child: _buildAvatar("assets/img_visage2.jpg")),
                          Positioned(left: 45, child: _buildAvatar("assets/img_visage1.jpg")),
                          
                          const Positioned(
                            left: 60, 
                            child: CircleAvatar(
                              radius: 12, 
                              backgroundColor: Color(0xFF2D2D44), 
                              child: Text("+3", style: TextStyle(color: Colors.white, fontSize: 10))
                            )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar(String url) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: const Color(0xFF161629),
      child: CircleAvatar(
        radius: 11,
        backgroundImage: AssetImage(url),
      ),
    );
  }
}