class Meals {
  String? breakfast;
  String? lunch;
  String? dinner;

  Meals({this.breakfast, this.lunch, this.dinner});

  factory Meals.fromjson(Map<dynamic, dynamic> json) {
    return Meals(
      breakfast: json['breakfast'],
      lunch: json['lunch'],
      dinner: json['dinner'],
    );
  }
}