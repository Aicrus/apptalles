import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'design_system/design_system.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  final supabaseUrl = dotenv.env['SUPABASE_URL'];
  final supabaseAnonKey = dotenv.env['SUPABASE_ANON_KEY'];
  if (supabaseUrl == null || supabaseAnonKey == null) {
    throw Exception('Supabase credentials not found. Please check .env file.');
  }
  await Supabase.initialize(url: supabaseUrl, anonKey: supabaseAnonKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: buildAppTheme(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Tela Principal'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (context) => const TodosComponentesPage(),
              ),
            );
          },
          child: const Text('Ver todos os componentes'),
        ),
      ),
    );
  }
}

class TodosComponentesPage extends StatelessWidget {
  const TodosComponentesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Todos os componentes'),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: const Text('Todos os componentes'),
      ),
    );
  }
}
