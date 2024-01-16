import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/presentation/widgets/molecules/platform_app_bar.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: UIHelper.padding(horizontal: 20, vertical: 10),
        child: ListView(
          children: [
            MenuItemWidget(
                title: 'Dummy UI',
                description: 'Introducing basic flutter widget UI',
                onItemTapped: () =>
                    AutoRouter.of(context).pushNamed('/dummyUI')),
            UIHelper.divider(),
            MenuItemWidget(
              title: 'Counter Example (State Management)',
              description:
                  'Introducing of state management using flutter_bloc. Level: 1',
              onItemTapped: () =>
                  AutoRouter.of(context).pushNamed('/counterExampleUI'),
            ),
            UIHelper.divider(),
            const MenuItemWidget(
              title: 'Input Validation Example (State Management)',
              description:
                  'Flutter state management using flutter_bloc to handle validation in text field. Level: 2',
            ),
            UIHelper.divider(),
            const MenuItemWidget(
              title: 'Calculator Example (State Management)',
              description:
                  'Flutter state management using flutter_bloc to calculate simple syntax. Level: 3',
            ),
            UIHelper.divider(),
            const MenuItemWidget(
              title: 'News App',
              description: 'API calling using free source from NYTimes',
            ),
            UIHelper.divider(),
            const MenuItemWidget(
              title: 'To Do App',
              description:
                  'Create a to do list that saved in local storage using hydrated_bloc. Level: 4',
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItemWidget extends StatelessWidget {
  final String title;
  final String description;
  final Function()? onItemTapped;
  const MenuItemWidget(
      {super.key,
      required this.title,
      required this.description,
      this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onItemTapped,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  description,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
          ),
          const Icon(
            Icons.chevron_right,
            size: 36,
          )
        ],
      ),
    );
  }
}
