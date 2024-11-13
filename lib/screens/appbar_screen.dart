import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/service_locator.dart';
import '../view_models/appbar_viewmodel.dart';

class AppBarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<AppBarViewModel>(),  // Provide AppBarViewModel to the widget tree
      child: Consumer<AppBarViewModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: Text(viewModel.title),
              actions: [
                PopupMenuButton<String>(
                  onSelected: viewModel.onMenuItemSelected,
                  itemBuilder: (BuildContext context) {
                    return {'Settings', 'Profile', 'Logout'}.map((String choice) {
                      return PopupMenuItem<String>(
                        value: choice,
                        child: Text(choice),
                      );
                    }).toList();
                  },
                ),
              ],
            ),
            body: Center(
              child: Text(
                'Current Page: ${viewModel.title}',
                style: TextStyle(fontSize: 24),
              ),
            ),
          );
        },
      ),
    );
  }
}
