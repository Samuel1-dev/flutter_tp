import 'package:flutter/material.dart';
import 'package:tp_flutter/layaouts/app_bar.dart';
import 'package:tp_flutter/layaouts/drawer.dart';

class TotalProjectPage extends StatefulWidget {
  const TotalProjectPage({super.key});

  @override
  State<TotalProjectPage> createState() => _TotalProjectPageState();
}

class _TotalProjectPageState extends State<TotalProjectPage> {
  // Couleurs exactes de la maquette
  final Color bgColor = const Color(0xFF0A0B14);
  final Color cardColor = const Color(0xFF111221);
  final Color borderColor = const Color(0xFF1E2036);
  final Color accentColor = const Color(0xFF818CF8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: GlobalAppbar(),
      drawer: GlobalDrawer(),
      
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            const Text(
              "Total project",
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            
            // --- CARTE PRINCIPALE ---
            _buildMainCard(),
            
            const SizedBox(height: 32),
            const Text(
              "Portfolio repositories",
              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            // --- SECTION REPOSITORIES ---
            _buildRepositorySection(),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildMainCard() {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildLogoCircular(),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Orbix Studio", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                        _buildEditIcon(),
                      ],
                    ),
                    Text("⭐ 4.5 (48)", style: TextStyle(color: accentColor, fontWeight: FontWeight.w600)),
                    const SizedBox(height: 8),
                    const Text("Expert in: Web Design, Web Development", style: TextStyle(color: Colors.white70, fontSize: 13)),
                    const SizedBox(height: 12),
                    _infoLine(Icons.group_outlined, "15-20 people team"),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        _infoLine(Icons.location_on_outlined, "Las Vegas, NV, USA"),
                        const SizedBox(width: 16),
                        _infoLine(Icons.translate, "English"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          _buildActionButtons(),
          const SizedBox(height: 20),
          Divider(),
          const SizedBox(height: 20),
          
          // --- STATS AVEC TRAIT DE SÉPARATION VERTICAL ---
          IntrinsicHeight(
            child: Row(
              children: [
                const _StatItem(value: "50K+", label: "Total earning"),
                const SizedBox(width: 30),
                VerticalDivider(color: borderColor, thickness: 1, indent: 5, endIndent: 5), // Le trait vertical
                const SizedBox(width: 30),
                const _StatItem(value: "70", label: "Total jobs"),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Divider(),
         
          const SizedBox(height: 32),
          Row(
            children: [
              const Icon(Icons.rocket_launch_outlined, color: Colors.white38, size: 18),
              const SizedBox(width: 8),
              const Text("Skills:", style: TextStyle(color: Colors.white38, fontSize: 14)),
            ],
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8, runSpacing: 8,
            children: ["web3.js", "CSS", "React Native", "Laravel", "React", "JavaScript"]
                .map((s) => _buildSkillChip(s)).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildRepositorySection() {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: borderColor),
      ),
      child: Column(
        children: [
          // NOUVEAU PROJET EN TÊTE
          _buildRepoItem(
            "Abi / Screenshot-to-code", 
            "A simple tool to convert screenshots into clean HTML/Tailwind code using AI.", 
            "TypeScript", "45", "12,430", "1,200", 
            dotColor: Colors.blueAccent
          ),
          Divider(color: borderColor, height: 1),
          _buildRepoItem(
            "ent-io / ente", 
            "A simple, customizable pomodoro timer code Neovim, written in Lua, with various integrations.", 
            "Lua", "120", "5,123", "456", 
            dotColor: Colors.purpleAccent
          ),
        ],
      ),
    );
  }

  Widget _buildRepoItem(String title, String desc, String lang, String val, String stars, String forks, {required Color dotColor}) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 8),
          Text(desc, style: const TextStyle(color: Colors.white54, fontSize: 13, height: 1.4)),
          const SizedBox(height: 16),
          Row(
            children: [
              Container(width: 8, height: 8, decoration: BoxDecoration(color: dotColor, shape: BoxShape.circle)),
              const SizedBox(width: 6),
              Text(lang, style: const TextStyle(color: Colors.white70, fontSize: 12)),
              const SizedBox(width: 20),
              _repoIcon(Icons.inventory_2_outlined, val),
              const SizedBox(width: 20),
              _repoIcon(Icons.star_border, stars),
              const SizedBox(width: 20),
              _repoIcon(Icons.account_tree_outlined, forks),
            ],
          )
        ],
      ),
    );
  }

  // --- WIDGETS DE STYLE ---
  Widget _buildLogoCircular() {
    return Container(
      width: 60, height: 60,
      decoration: BoxDecoration(
        color: const Color(0xFF0F2D29),
        shape: BoxShape.circle,
        border: Border.all(color: const Color(0xFF1E4D45), width: 2),
      ),
      child: const Icon(Icons.interests, color: Color(0xFF4ADE80), size: 30),
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [Color(0xFF818CF8), Color(0xFF6366F1)]),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(child: Text("Message", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: borderColor),
            ),
            child: const Center(child: Text("New contract", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))),
          ),
        ),
      ],
    );
  }

  Widget _buildSkillChip(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: const Color(0xFF1C1D2D),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Text(label, style: const TextStyle(color: Colors.white70, fontSize: 12)),
    );
  }

  Widget _infoLine(IconData icon, String text) {
    return Row(children: [
      Icon(icon, size: 14, color: Colors.white38),
      const SizedBox(width: 6),
      Text(text, style: const TextStyle(color: Colors.white38, fontSize: 12)),
    ]);
  }

  Widget _repoIcon(IconData icon, String value) {
    return Row(children: [
      Icon(icon, size: 16, color: Colors.white38),
      const SizedBox(width: 4),
      Text(value, style: const TextStyle(color: Colors.white70, fontSize: 12)),
    ]);
  }

  Widget _buildEditIcon() {
    return Row(children: [
      Icon(Icons.edit_outlined, size: 14, color: accentColor),
      const SizedBox(width: 4),
      Text("Set a name", style: TextStyle(color: accentColor, fontSize: 12)),
    ]);
  }
}

class _StatItem extends StatelessWidget {
  final String value, label;
  const _StatItem({required this.value, required this.label});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(value, style: const TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.white38, fontSize: 12)),
      ],
    );
  }
}