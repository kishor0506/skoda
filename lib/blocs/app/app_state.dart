part of 'app_bloc.dart';

enum AppStatus { authenticated, unauthenticated }

class AppState extends Equatable {
  final AppStatus status;
  final Users user;

  const AppState._({
    required this.status,
    this.user = Users.empty,
  });

  const AppState.authenticated(Users user)
      : this._(
          status: AppStatus.authenticated,
          user: user,
        );

  const AppState.unauthenticated() : this._(status: AppStatus.unauthenticated);

  @override
  List<Object> get props => [status, user];
}
