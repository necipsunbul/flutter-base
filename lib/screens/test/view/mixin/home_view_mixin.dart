import 'package:flutter/material.dart';

import '../../view_model/test_view_model.dart';
import '../test_view.dart';

mixin TestViewMixin on State<TestView> {
  late final TestViewModel _viewModel;
  TestViewModel get viewModel => _viewModel;
  @override
  void initState() {
    super.initState();
    _viewModel = TestViewModel();
  }
}
