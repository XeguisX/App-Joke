import 'package:app_joke/domain/use_cases/get_joke_ramdon.dart';
import 'package:app_joke/presentation/view_model/joke_random_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class JokeRandomViewModel extends StateNotifier<JokeRandomState> {
  JokeRandomViewModel(this._getJokeRamdon) : super(JokeRandomInitial());

  final GetJokeRamdon _getJokeRamdon;

  void getJokeRandom() async {
    state = JokeRandomLoading();
    try {
      final joke = await _getJokeRamdon();
      state = JokeRandomSuccess(joke);
    } catch (_, __) {
      state = JokeRandomFailure();
    }
  }
}
