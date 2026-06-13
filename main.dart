import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/statistics_screen.dart';
import 'screens/emergency_screen.dart';
import 'screens/calibration_screen.dart';
import 'screens/settings_screen.dart';
import 'services/preferences_service.dart';
Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await PreferencesService.load();

  runApp(
    const PulseGuardApp(),
  );
}

class PulseGuardApp extends StatelessWidget {
  const PulseGuardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PulseGuard',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      routes: {
        '/stats': (_) => const StatisticsScreen(),
        '/emergency': (_) => const EmergencyScreen(),
        '/calibration': (_) => const CalibrationScreen(),
        '/settings': (_) => const SettingsScreen(),
      },
    );
  }
}