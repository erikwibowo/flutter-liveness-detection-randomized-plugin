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
      appBar: AppBar(title: const Text("Verifikasi Keaktifan")),
      body: SafeArea(
        minimum: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: Column(
                children: [
                  const ListTile(
                    leading: 
                      CircleAvatar(child: Text("1")),
                    title: Text(
                      "Pencahayaan yang cukup",
                    ),
                    subtitle: Text(
                      "Pastikan Anda berada di area yang memiliki pencahayaan yang cukup dan telinga Anda tidak tertutup oleh apapun",
                    ),
                  ),
                  const ListTile(
                    leading: 
                      CircleAvatar(child: Text("2")),
                    title: Text(
                      "Pandangan Lurus ke Depan",
                    ),
                    subtitle: Text(
                      "Pegang handphone setinggi mata dan lihat langsung ke kamera",
                    ),
                  ),
                  ListTile(
                    leading: 
                      const CircleAvatar(child: Text("3")),
                    title: const Text(
                      "Batas Waktu Verifikasi",
                    ),
                    subtitle: Text(
                      "Batas waktu yang diberikan untuk proses verifikasi adalah ${widget.duration ?? 45} detik",
                    ),
                  ),
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
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              spacing: 4,
              children: [
                Icon(
                  Icons.info_outline,
                  size: 16,
                  color: Theme.of(
                    context,
                  ).colorScheme.primary,
                ),
                Text(
                  "Layar informasi dapat dinonaktifkan di pengaturan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
