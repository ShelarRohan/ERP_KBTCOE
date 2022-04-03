// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenteeModal _$MenteeFromJson(Map<String, dynamic> json) {
  return MenteeModal(
    STUDENT_ID: json['STUDENT_ID'] as String,
    NAME: json['NAME'] as String,
    SURNAME: json['SURNAME'] as String,
    PARENT_NAME: json['PARENT_NAME'] as String,
    PER_PNONE_NO: json['PER_PNONE_NO'] as String,
    EMAIL_ID: json['EMAIL_ID'] as String,
    // subscription: json['subscription'] as bool,
    // address: json['address'] == null
    //     ? null
    //     : Address.fromJson(json['address'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$MenteeToJson(MenteeModal instance) => <String, dynamic>{
      'STUDENT_ID': instance.STUDENT_ID,
      'NAME': instance.NAME,
      'SURNAME': instance.SURNAME,
      'PARENT_NAME': instance.PARENT_NAME,
      'PER_PNONE_NO': instance.PER_PNONE_NO,
      'EMAIL_ID': instance.EMAIL_ID,

      // 'address': instance.address?.toJson(),
    };
