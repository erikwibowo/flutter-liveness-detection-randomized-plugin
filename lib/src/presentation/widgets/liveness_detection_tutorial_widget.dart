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
      appBar: AppBar(title: const Text("Veriivikasi Keaktifan"), centerTitle: true),
      body: SafeArea(
        minimum: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
                    ),
                    title: Text(
                      "Pencahayaan yang cukup",
                  ),
                  ListTile(
                    leading: 
                      CircleAvatar(child: Text("2")),
                    subtitle: Text(
                      "Pegang handphone setinggi mata dan lihat langsung ke kamera",
                    ),
                    title: Text(
                      "Pandangan Lurus ke Depan",
                  ),
                  ListTile(
                    leading: 
                      CircleAvatar(child: Text("3")),
                    subtitle: Text(
                      "Batas waktu yang diberikan untuk proses verifikasi adalah ${widget.duration ?? 45} detik",
                    ),
                    title: Text(
                      "Batas Waktu Verifikasi",
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
                label: const Text('Mulai Verifikasi Keaktifan'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
