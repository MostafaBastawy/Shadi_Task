import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadi_systems_task/cubits/setting_cubit/setting_states.dart';

class SettingCubit extends Cubit<SettingStates> {
  SettingCubit() : super(SettingInitialState());

  static SettingCubit get(context) => BlocProvider.of(context);
}
