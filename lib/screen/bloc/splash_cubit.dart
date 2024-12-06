import 'package:ecommerceapp/screen/bloc/splash_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash()); // Tambahkan tanda titik koma

  void appStarted() async {
    await Future.delayed(Duration(seconds: 2));
    emit(
        UnAutenticated()); // Pastikan kelas state ini sesuai dengan implementasi Anda
  }
}
