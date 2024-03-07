// import 'package:bloc/bloc.dart';
// import 'package:certicode_app/bloc/login_event.dart';
// import 'package:certicode_app/bloc/login_state.dart';

// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   LoginBloc() : super(LoginInitial()) {
//     on<LoginStarted>((event, emit) {
  
//       emit(LoginLoading()); // Emit a loading state

//       // Simulate asynchronous login here
//       Future.delayed(const Duration(seconds: 3), () {
//         emit(const LoginSuccessful(message: 'Welcome'));
//       });
//     });
//     on <LoginFailed>((event, emit) {
//       emit (LoginLoading());
//       emit ( const LoginFailed(message: 'Invalid credentials') as LoginState);
//     });
//   }
// }
// login_bloc.dart
import 'package:bloc/bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

// class LoginBloc extends Bloc<LoginEvent, LoginState> {
//   LoginBloc() : super(LoginInitial());

//   Stream<LoginState> mapEventToState(LoginEvent event) async* {
//   //   if (event is LoginStarted) {
//   //     yield LoginLoading();

//   //     // Simulate asynchronous login here
//   //     await Future.delayed(const Duration(seconds: 3));

//   //     // Assuming login is successful for demonstration
//   //     yield LoginSuccessful(message: 'Welcome');
//   //   } else if (event is LoginFailed) {
//   //     yield LoginFailure(error: event.message);
//   //   }
  
//    }
// }

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginStarted>((event, emit) async {
      emit(LoginLoading());

      // Simulate asynchronous login here
      await Future.delayed(const Duration(seconds: 3));

      // Assuming login is successful for demonstration
      emit(LoginSuccessful(message: 'Welcome'));
    });

    on<LoginFailed>((event, emit) {
      emit(LoginFailure(error: event.message));
    });
  }
}