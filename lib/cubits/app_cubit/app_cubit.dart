import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadi_systems_task/cubits/app_cubit/app_states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  List<Map<String, String>> homeScreenShortcuts = [
    {
      'image': 'assets/images/dashboard.png',
      'label': 'Dashboard',
    },
    {
      'image': 'assets/images/clinical_risk.png',
      'label': 'Clinical & Non-clinical Risks',
    },
    {
      'image': 'assets/images/ovr.png',
      'label': 'OVR',
    },
    {
      'image': 'assets/images/staff_risk.png',
      'label': 'Staff Risk',
    },
    {
      'image': 'assets/images/pcra_icra.png',
      'label': 'PCRA & ICRA',
    },
    {
      'image': 'assets/images/kpis.png',
      'label': 'KPIS',
    },
  ];
}
