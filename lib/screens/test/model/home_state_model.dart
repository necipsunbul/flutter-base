import 'package:equatable/equatable.dart';

final class TestState extends Equatable {
  final bool isLoading;
  final List<String>? users;

  const TestState({this.users, required this.isLoading});

  @override
  List<Object?> get props => [isLoading, users];

  TestState copyWith({bool? isLoading, List<String>? users}) {
    return TestState(
      isLoading: isLoading ?? this.isLoading,
      users: users ?? this.users,
    );
  }
}
