import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadi_systems_task/cubits/authentication_cubit/app_states.dart';

class AuthenticationCubit extends Cubit<AuthenticationStates> {
  AuthenticationCubit() : super(AuthenticationInitialState());

  static AuthenticationCubit get(context) => BlocProvider.of(context);
}
