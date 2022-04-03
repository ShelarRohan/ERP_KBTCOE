// import 'package:json_annotation/json_annotation.dart';
// import 'address.dart';
part 'mentee.g.dart';

@JsonSerializable(explicitToJson: true)
class MenteeModal {
  String STUDENT_ID, NAME, SURNAME, PARENT_NAME, PER_PNONE_NO, EMAIL_ID;
  // bool subscription;
  // Address address;

  MenteeModal({
    required this.STUDENT_ID,
    required this.NAME,
    required this.SURNAME,
    required this.PARENT_NAME,
    required this.PER_PNONE_NO,
    required this.EMAIL_ID,

    // required this.address
  });

  factory MenteeModal.fromJson(Map<String, dynamic> data) =>
      _$MenteeFromJson(data);

  Map<String, dynamic> toJson() => _$MenteeToJson(this);
}

class JsonSerializable {
  const JsonSerializable({required bool explicitToJson});
}
