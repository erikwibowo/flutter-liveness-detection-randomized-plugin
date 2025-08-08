import 'package:flutter_liveness_detection_randomized_plugin/index.dart';

class LivenessDetectionTutorialScreen extends StatefulWidget {
  final VoidCallback onStartTap;
  final bool isDarkMode;
  final int? duration;
  const LivenessDetectionTutorialScreen(
      {super.key,
      required this.onStartTap,
      this.isDarkMode = false,
      required this.duration});

  @override
  State<LivenessDetectionTutorialScreen> createState() =>
      _LivenessDetectionTutorialScreenState();
}

class _LivenessDetectionTutorialScreenState
    extends State<LivenessDetectionTutorialScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.isDarkMode ? Colors.black : Colors.white,
      body: SafeArea(
        minimum: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Instruksi Singkat',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: widget.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: widget.isDarkMode ? Colors.black87 : Colors.white,
                boxShadow: !widget.isDarkMode
                    ? [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ]
                    : null,
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: 
                      CircleAvatar(child: Text("1")),
                    subtitle: Text(
                      "Pastikan Anda berada di area yang memiliki pencahayaan yang cukup dan telinga Anda tidak tertutup oleh apapun",
                      style: TextStyle(
                          color:
                              widget.isDarkMode ? Colors.white : Colors.black),
                    ),
                    title: Text(
                      "Pencahayaan yang cukup",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color:
                              widget.isDarkMode ? Colors.white : Colors.black),
                    ),
                  ),
                  ListTile(
                    leading: 
                      CircleAvatar(child: Text("1")),
                    subtitle: Text(
                      "Pegang handphone setinggi mata dan lihat langsung ke kamera",
                      style: TextStyle(
                          color:
                              widget.isDarkMode ? Colors.white : Colors.black),
                    ),
                    title: Text(
                      "Pandangan Lurus ke Depan",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color:
                              widget.isDarkMode ? Colors.white : Colors.black),
                    ),
                  ),
                  ListTile(
                    leading: 
                      CircleAvatar(child: Text("1")),
                    subtitle: Text(
                      "Batas waktu yang diberikan untuk proses verifikasi adalah ${widget.duration ?? 45} detik",
                      style: TextStyle(
                          color:
                              widget.isDarkMode ? Colors.white : Colors.black),
                    ),
                    title: Text(
                      "Batas Waktu Verifikasi",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color:
                              widget.isDarkMode ? Colors.white : Colors.black),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                onPressed: () => widget.onStartTap(),
                icon: const Icon(Icons.camera_alt_outlined),
                label: const Text('"Mulai Verifikasi Keaktifan"'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
