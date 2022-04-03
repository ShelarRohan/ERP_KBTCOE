// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sem _$SemFromJson(Map<String, dynamic> json) {
  return Sem(
    SRNO: json['SRNO'] as String,
    EM0REF: json['EM0REF'] as String,
    STUDENT_ID: json['STUDENT_ID'] as String,
    YR: json['YR'] as String,
    PAT: json['PAT'] as String,
    SEAT_NO: json['SEAT_NO'] as String,
    SGPA: json['SGPA'] as String,
    // subscription: json['subscription'] as bool,
    // address: json['address'] == null
    //     ? null
    //     : Address.fromJson(json['address'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$SemToJson(Sem instance) => <String, dynamic>{
      'SRNO': instance.SRNO,
      'EM0REF': instance.EM0REF,
      'STUDENT_ID': instance.STUDENT_ID,
      'YR': instance.YR,
      'PAT': instance.PAT,
      'SEAT_NO': instance.SEAT_NO,
      'SGPA': instance.SGPA,

      // 'address': instance.address?.toJson(),
    };
