import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/presentation/pages/main/main_page.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class DummyUIPage extends StatelessWidget {
  const DummyUIPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dummy UI')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            MenuItemWidget(
              title: 'Next',
              description: 'Tab Bar, GridView, ListView',
              onItemTapped: () =>
                  AutoRouter.of(context).pushNamed('/secondDummyUI'),
            ),
            UIHelper.verticalSpace(16),
            Text(
              'CONTAINER AND TEXT',
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.green[400],
                  fontWeight: FontWeight.bold),
            ),
            UIHelper.verticalSpace(8),
            const ItemListWidget(
              title: 'How can I be Flutter Developer Expert',
              date: 'Jill Lepore 23 May 2023',
            ),
            UIHelper.verticalSpace(24),
            Text('COLUMN',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.green[400],
                    fontWeight: FontWeight.bold)),
            UIHelper.verticalSpace(8),
            Column(
              children: [
                const ItemListWidget(
                    title: 'How can I be flutter Developer Expert 1?',
                    date: 'Jill Lepore 23 May 2023'),
                UIHelper.verticalSpace(8),
                const ItemListWidget(
                    title: 'How can I be flutter Developer Expert 2?',
                    date: 'Jill Lepore 23 May 2023')
              ],
            ),
            UIHelper.verticalSpace(24),
            Text('ROW',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.green[400],
                    fontWeight: FontWeight.bold)),
            UIHelper.verticalSpace(8),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ItemGridWidget(
                  title: 'Container 1',
                ),
                ItemGridWidget(
                  title: 'Container 1',
                ),
                ItemGridWidget(
                  title: 'Container 1',
                )
              ],
            ),
            UIHelper.verticalSpace(24),
            Text('BUTTON',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.green[400],
                    fontWeight: FontWeight.bold)),
            UIHelper.verticalSpace(8),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'SUBMIT',
                    ))),
            UIHelper.verticalSpace(24),
            Text('IMAGE ASSETS, SIZEDBOX AND EXPANDED',
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.green[400],
                    fontWeight: FontWeight.bold)),
            UIHelper.verticalSpace(8),
            Row(
              children: [
                const Expanded(
                  child: ItemGridWidget(
                    title: 'Container 1',
                  ),
                ),
                UIHelper.horizontalSpace(16),
                const ItemGridWidget(
                  title: 'Container 1',
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class ItemGridWidget extends StatelessWidget {
  final String title;
  const ItemGridWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                Constants.dummyImg,
                height: 56,
                width: 56,
                fit: BoxFit.cover,
              ),
            ),
            UIHelper.verticalSpace(4),
            Text(
              title,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}

class ItemListWidget extends StatelessWidget {
  final String title;
  final String date;

  const ItemListWidget({super.key, required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(
                Constants.dummyImg,
                height: 56,
                width: 56,
                fit: BoxFit.cover,
              ),
            ),
            UIHelper.horizontalSpace(16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12),
                  ),
                  UIHelper.verticalSpace(4),
                  Text(
                    title,
                    style: const TextStyle(fontSize: 12, color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
