import 'package:flutter/cupertino.dart';
import 'package:search_college/src/feature/search/model/university_model.dart';
import 'package:search_college/src/feature/search/repository/search_repository.dart';
import 'package:search_college/src/services/state_states.dart';

class SearchController {
  final repository = SearchRepository();

  List<UniversityModel> universities = [];

  ValueNotifier<StateStates> states = ValueNotifier(StateStates.empty);

  String college = '';
  String country = '';

  void getUniverrsities() async {
    states.value = StateStates.loading;
    var data = await repository.getCollege(college, country);
    if (data.isNotEmpty) {
      universities.addAll(data);
      states.value = StateStates.success;
    } else {
      states.value = StateStates.failure;
    }
  }
}
