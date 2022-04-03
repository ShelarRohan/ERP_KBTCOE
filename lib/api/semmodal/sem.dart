// import 'package:json_annotation/json_annotation.dart';
import 'address.dart';
part 'sem.g.dart';

@JsonSerializable(explicitToJson: true)
class Sem {
  String SRNO, EM0REF, STUDENT_ID, YR, PAT, SEAT_NO, SGPA;
  // bool subscription;
  // Address address;

  Sem({
    required this.SRNO,
    required this.EM0REF,
    required this.STUDENT_ID,
    required this.YR,
    required this.PAT,
    required this.SEAT_NO,
    required this.SGPA,
    // required this.address
  });

  factory Sem.fromJson(Map<String, dynamic> data) => _$SemFromJson(data);

  Map<String, dynamic> toJson() => _$SemToJson(this);
}

class JsonSerializable {
  const JsonSerializable({required bool explicitToJson});
}
