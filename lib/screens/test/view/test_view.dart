import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/notifiers/change_theme_provider.dart';
import '../model/home_state_model.dart';
import '../services/TestService.dart';
import '../view_model/test_view_model.dart';
import 'mixin/home_view_mixin.dart';

part 'widget/home_app_bar.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> with TestViewMixin {
  var service = TestService();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => viewModel,
      child: Scaffold(
        appBar: _HomeAppBar(),
        body: Center(
          child: Column(
            children: [
              const Text("Test view body"),
              ElevatedButton(
                onPressed: () {
                  viewModel.changeLoading();
                },
                child: const Text("Change Loading"),
              ),
              ElevatedButton(
                onPressed: () {
                  viewModel.loadUsers();
                },
                child: const Text("Load users"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<ChangeThemeCubit>().changeTheme(ThemeMode.dark);
                },
                child: const Text("dark theme"),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<ChangeThemeCubit>().changeTheme(ThemeMode.light);
                },
                child: const Text("light theme"),
              ),
              ElevatedButton(
                onPressed: () async {
                  service.getData();
                },
                child: const Text("load data"),
              ),
              OutlinedButton(onPressed: () {}, child: const Text("deneme")),
              const SizedBox(
                width: 300,
                height: 100,
                child: Card(
                  child: Text("test"),
                ),
              ),
              const _UserList(),
            ],
          ),
        ),
      ),
    );
  }
}

class _UserList extends StatelessWidget {
  const _UserList();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<TestViewModel, TestState, List<String>>(
      selector: (state) => state.users ?? [],
      builder: (context, state) {
        if (state.isEmpty) return const SizedBox.shrink();
        return Expanded(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state[index]),
                subtitle: Text(
                  state[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
