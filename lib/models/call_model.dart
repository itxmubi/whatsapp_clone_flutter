import 'dart:convert';

class CallModel {
  List<Datum>? data;
  CallModel({
    this.data,
  });

  factory CallModel.fromMap(Map<String, dynamic> json) => CallModel(
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "data":
            data == null ? [] : List<dynamic>.from(data!.map((x) => x.toMap())),
      };

  factory CallModel.fromJson(String str) => CallModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());
}

class Datum {
  String? name;
  String? day;
  String? date;
  String? callType;
  String? callMedium;

  Datum({this.name, this.day, this.date, this.callType, this.callMedium});

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        name: json["name"],
        day: json["day"],
        date: json["date"],
        callType: json["callType"],
        callMedium: json["callMedium"],
      );

  Map<String, dynamic> toMap() => {
        "name": name,
        "day": day,
        "date": date,
        "callType": callType,
        "callMedium": callMedium,
      };

  factory Datum.fromJson(String str) => Datum.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());
}
