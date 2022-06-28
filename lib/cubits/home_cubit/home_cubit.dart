import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shadi_systems_task/cubits/home_cubit/home_states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);
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
