import 'package:flutter/material.dart';
import 'package:search_college/src/feature/search/controller/search_controller.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final controller = SearchController();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pesquisa Universidade'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Informe o país'),
              onChanged: (value) => controller.country = value,
            ),
            const SizedBox(height: 8),
            TextField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Informe o nome da universidade'),
              onChanged: (value) => controller.college = value,
            ),
            const SizedBox(height: 8),
            ElevatedButton(
                onPressed: controller.getUniverrsities,
                child: const Text('Pesquisar')),
            const SizedBox(height: 8),
            Liste(builder: (context) {
              return SingleChildScrollView(
                child: Column(
                  children: controller.universities
                      .map((e) => ListTile(
                            title: Text(e.country),
                            subtitle: Text(e.name),
                          ))
                      .toList(),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
