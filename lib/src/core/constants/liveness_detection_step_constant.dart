import 'package:flutter_liveness_detection_randomized_plugin/index.dart';

List<LivenessDetectionStepItem> stepLiveness = [
  LivenessDetectionStepItem(
    step: LivenessDetectionStep.blink,
    title: "Kedipkan Mata 2-3 Kali",
  ),
  LivenessDetectionStepItem(
    step: LivenessDetectionStep.lookUp,
    title: "Tengok Atas",
  ),
  LivenessDetectionStepItem(
    step: LivenessDetectionStep.lookDown,
    title: "Tengok Bawah",
  ),
  LivenessDetectionStepItem(
    step: LivenessDetectionStep.lookRight,
    title: "Tengok Kanan",
  ),
  LivenessDetectionStepItem(
    step: LivenessDetectionStep.lookLeft,
    title: "Tengok Kiri",
  ),
  LivenessDetectionStepItem(
    step: LivenessDetectionStep.smile,
    title: "Senyum",
  ),
];
