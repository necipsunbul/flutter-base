import '../../../core/base/state/base_state.dart';
import '../model/home_state_model.dart';

final class TestViewModel extends BaseState<TestState> {
  TestViewModel() : super(const TestState(isLoading: false));
  void changeLoading() {
    emit(state.copyWith(isLoading: !state.isLoading));
  }

  void loadUsers() {
    emit(state.copyWith(users: ["ali", "veli", "mehmet"]));
  }
}
