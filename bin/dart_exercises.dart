void main() {
  String userName = 'Jimmy Paul Alba';
  int stepCount = 8450;
  double waterIntakeLiters = 2.75;
  bool completedWorkout = true;

  double caloriesBurnedFromSteps = stepCount * 0.04;
  double workoutBonusCalories = completedWorkout ? 250.0 : 0.0;
  double totalCaloriesBurned = caloriesBurnedFromSteps + workoutBonusCalories;

  int thousandStepBlocks = stepCount ~/ 1000;
  double remainingHydrationCents = waterIntakeLiters % 1.0;

  int activeStreakDays = 6;
  activeStreakDays++;

  bool hitStepGoal = stepCount >= 8000;
  bool reachedHydrationTarget = waterIntakeLiters >= 3.0;
  bool isStreakActive = activeStreakDays > 5;
  bool isPerfectTenThousand = stepCount == 10000;

  print('=== DAILY FITNESS & WELLNESS SUMMARY ===');
  print('User: $userName');
  print('Active Streak: $activeStreakDays consecutive days');
  print('Steps Completed: $stepCount ($thousandStepBlocks full 1k-step blocks)');
  print('Water Intake: ${waterIntakeLiters.toStringAsFixed(2)} L (Fractional remainder: ${remainingHydrationCents.toStringAsFixed(2)} L)');
  print('Completed Daily Workout: $completedWorkout');
  print('Total Calories Burned: ${totalCaloriesBurned.toStringAsFixed(1)} kcal');
  print('--- GOAL ACHIEVEMENTS & STATUS ---');
  print('Achieved Daily Step Goal (Steps >= 8000): $hitStepGoal');
  print('Met Hydration Target (Water >= 3.0 L): $reachedHydrationTarget');
  print('Streak Bonus Active (Streak > 5 Days): $isStreakActive');
  print('Hit Exactly 10,000 Steps?: $isPerfectTenThousand');
}