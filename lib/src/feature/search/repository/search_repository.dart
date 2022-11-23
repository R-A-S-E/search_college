import 'package:dio/dio.dart';
import 'package:search_college/src/feature/search/model/university_model.dart';

class SearchRepository {
  Future<List<UniversityModel>> getCollege(
      String college, String country) async {
    try {
      final response = await Dio().get(
          'http://universities.hipolabs.com/search?name=$college&country=$country');
      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        return data.map((e) => UniversityModel.fromMap(e)).toList();
      } else {
        return [];
      }
    } catch (e) {
      // ignore: avoid_print
      print(e);
      return [];
    }
  }
}
