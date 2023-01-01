import '../../entities/api/exercise_api_dto.dart';
import '../../entities/api/goal_api_dto.dart';

abstract class FitnessJsonDataSource {
  Future<List<ExerciseApiDto>> getExercises();
  Future<List<GoalApiDto>> getGoals();
}

class FitnessJsonDataSourceImpl implements FitnessJsonDataSource {
  @override
  Future<List<ExerciseApiDto>> getExercises() async {
    throw UnimplementedError();
  }

  @override
  Future<List<GoalApiDto>> getGoals() {
    throw UnimplementedError();
  }

}