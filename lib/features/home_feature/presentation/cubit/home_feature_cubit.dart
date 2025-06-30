import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_feature_state.dart';

class HomeFeatureCubit extends Cubit<HomeFeatureState> {
  HomeFeatureCubit() : super(HomeFeatureInitial());
}
