import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'design_system/design_system.dart';
import 'components/components.dart';

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
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Botões',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textHighlight,
                ),
              ),
              const SizedBox(height: 20),
              
              // Botão Primário
              const Text(
                'Primary Button (Login)',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textHighlight,
                ),
              ),
              const SizedBox(height: 12),
              PrimaryButton(
                text: 'Login',
                onPressed: () {
                  // Action
                },
              ),
              const SizedBox(height: 30),
              
              // Botão Secundário
              const Text(
                'Secondary Button (Register)',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textHighlight,
                ),
              ),
              const SizedBox(height: 12),
              SecondaryButton(
                text: 'Register',
                onPressed: () {
                  // Action
                },
              ),
              const SizedBox(height: 30),
              
              // Botão Primário (Loading)
              const Text(
                'Primary Button (Loading)',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textHighlight,
                ),
              ),
              const SizedBox(height: 12),
              const PrimaryButton(
                text: 'Login',
                isLoading: true,
              ),
              const SizedBox(height: 30),
              
              // Botão Secundário (Loading)
              const Text(
                'Secondary Button (Loading)',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: AppColors.textHighlight,
                ),
              ),
              const SizedBox(height: 12),
              const SecondaryButton(
                text: 'Register',
                isLoading: true,
              ),
              const SizedBox(height: 50),
              
              // Seção de Cards de Categoria
              const Text(
                'Cards de Categoria',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textHighlight,
                ),
              ),
              const SizedBox(height: 20),
              
              Row(
                children: [
                  CategoryCard(
                    name: 'Vegetables',
                    onTap: () {
                      // Action
                    },
                  ),
                  const SizedBox(width: 20),
                  CategoryCard(
                    name: 'Fruits',
                    onTap: () {
                      // Action
                    },
                  ),
                  const SizedBox(width: 20),
                  CategoryCard(
                    name: 'Dairy',
                    onTap: () {
                      // Action
                    },
                  ),
                ],
              ),
              const SizedBox(height: 50),
              
              // Seção de Cards de Produto
              const Text(
                'Cards de Produto',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textHighlight,
                ),
              ),
              const SizedBox(height: 20),
              
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductCard(
                      name: 'Fresh Carrot',
                      imageUrl: 'https://images.unsplash.com/photo-1598170845058-32b9d6a5da37?w=400',
                      price: 18000,
                      oldPrice: 21000,
                      unit: 'kg',
                      onTap: () {
                        // Action
                      },
                      onAddToCart: () {
                        // Action
                      },
                      onFavoriteToggle: () {
                        // Action
                      },
                    ),
                    const SizedBox(width: 20),
                    ProductCard(
                      name: 'Fresh Tomato',
                      imageUrl: 'https://images.unsplash.com/photo-1546470427-e26264d70dcc?w=400',
                      price: 15000,
                      unit: 'kg',
                      isFavorite: true,
                      onTap: () {
                        // Action
                      },
                      onAddToCart: () {
                        // Action
                      },
                      onFavoriteToggle: () {
                        // Action
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              
              // Seção de Itens de Lista (Horizontal)
              const Text(
                'Itens de Lista (Horizontal)',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.textHighlight,
                ),
              ),
              const SizedBox(height: 20),
              
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductListItem(
                      name: 'Fresh Red Chili',
                      imageUrl: 'https://images.unsplash.com/photo-1583454032902-a8e79950c97c?w=400',
                      price: 12000,
                      unit: 'kg',
                      onTap: () {
                        // Action
                      },
                    ),
                    const SizedBox(width: 15),
                    ProductListItem(
                      name: 'Fresh Lettuce',
                      imageUrl: 'https://images.unsplash.com/photo-1556801712-76c8eb07bbc9?w=400',
                      price: 8000,
                      unit: 'kg',
                      onTap: () {
                        // Action
                      },
                    ),
                    const SizedBox(width: 15),
                    ProductListItem(
                      name: 'Fresh Spinach',
                      imageUrl: 'https://images.unsplash.com/photo-1576045057995-568f588f82fb?w=400',
                      price: 10000,
                      unit: 'kg',
                      onTap: () {
                        // Action
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
