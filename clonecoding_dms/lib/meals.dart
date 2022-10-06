import 'package:intl/intl.dart';

String getSystemTime() {
  var now = DateTime.now();
  return DateFormat("yyy-MM-dd").format(now);
}
class Test {
  Date? date;

  Test({this.date});

  Test.fromJson(Map<String, dynamic> json) {
    date = json['${getSystemTime()}'] != null ? new Date.fromJson(json['${getSystemTime()}']) : null;
    print('${getSystemTime()}');
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.date != null) {
      data['${getSystemTime()}'] = this.date!.toJson();
    }
    return data;
  }
}

class Date {
  List<String>? breakfast;
  List<String>? dinner;
  List<String>? lunch;

  Date({this.breakfast, this.dinner, this.lunch});

  Date.fromJson(Map<String, dynamic> json) {
    breakfast = json['breakfast'].cast<String>();
    dinner = json['dinner'].cast<String>();
    lunch = json['lunch'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['breakfast'] = this.breakfast;
    data['dinner'] = this.dinner;
    data['lunch'] = this.lunch;
    return data;
  }
}