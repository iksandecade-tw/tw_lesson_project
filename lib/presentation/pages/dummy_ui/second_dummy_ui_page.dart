import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/presentation/pages/dummy_ui/dummy_ui_page.dart';

@RoutePage()
class SecondDummyUIPage extends StatefulWidget {
  const SecondDummyUIPage({super.key});

  @override
  State<SecondDummyUIPage> createState() => _SecondDummyUIPageState();
}

class _SecondDummyUIPageState extends State<SecondDummyUIPage>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Dummy UI'),
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'List',
              ),
              Tab(
                text: 'Grid',
              )
            ],
          ),
        ),
        body: TabBarView(children: [
          ListView.builder(
            itemBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: ItemListWidget(
                  title: 'How can I be Flutter Developer Expert 1',
                  date: 'Jill Lepore 23 May 2023'),
            ),
            itemCount: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1.4,
              children: [
                for (int i = 0; i < 10; i++)
                  const ItemGridWidget(title: 'Container 1')
              ],
            ),
          )
        ]),
      ),
    );
  }
}
