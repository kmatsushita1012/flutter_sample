import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/application/repository/git_repo_repository.dart';
import 'package:flutter_sample/firebase_options.dart';
import 'package:flutter_sample/infrastructure/mock/mock_git_repo_repository.dart';
import 'package:flutter_sample/infrastructure/remote/http_git_repo_repository.dart';
import 'package:flutter_sample/presentation/pages/list_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  //flutter run --dart-define=USE_MOCK=true
  // ignore: do_not_use_environment
  const useMock = bool.fromEnvironment('USE_MOCK');

  final gitRepoRepository =
      useMock ? MockGitRepoRepository() : HttpGitRepoRepository();

  runApp(
    ProviderScope(
      overrides: [
        gitRepoRepositoryProvider.overrideWithValue(gitRepoRepository),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
