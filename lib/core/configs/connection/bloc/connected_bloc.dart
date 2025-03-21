import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

part 'connected_event.dart';
part 'connected_state.dart';

class ConnectedBloc extends Bloc<ConnectedEvent, ConnectedState> {
  ConnectedBloc() : super(ConnectedInitial()) {
    StreamSubscription? subscription;

    on<ConnectedEvent>((event, emit) {
      emit(ConnectedSuccessState());
    });
    on<OnNotConnected>((event, emit) {
      emit(ConnectedFailureState());
    });

    subscription = Connectivity().onConnectivityChanged.listen((
      ConnectivityResult result,
    ) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        add(OnConnected());
      } else {
        add(OnNotConnected());
      }
    });

    @override
    Future<void> close() {
      subscription?.cancel();
      return super.close();
    }
  }
}
