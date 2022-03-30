// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'assessment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AssessmentModel _$AssessmentModelFromJson(Map<String, dynamic> json) {
  return _AssessmentModel.fromJson(json);
}

/// @nodoc
class _$AssessmentModelTearOff {
  const _$AssessmentModelTearOff();

  _AssessmentModel call(
      {required int id,
      required String subject,
      required String task,
      required String deadline}) {
    return _AssessmentModel(
      id: id,
      subject: subject,
      task: task,
      deadline: deadline,
    );
  }

  AssessmentModel fromJson(Map<String, Object?> json) {
    return AssessmentModel.fromJson(json);
  }
}

/// @nodoc
const $AssessmentModel = _$AssessmentModelTearOff();

/// @nodoc
mixin _$AssessmentModel {
  int get id => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String get task => throw _privateConstructorUsedError;
  String get deadline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssessmentModelCopyWith<AssessmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssessmentModelCopyWith<$Res> {
  factory $AssessmentModelCopyWith(
          AssessmentModel value, $Res Function(AssessmentModel) then) =
      _$AssessmentModelCopyWithImpl<$Res>;
  $Res call({int id, String subject, String task, String deadline});
}

/// @nodoc
class _$AssessmentModelCopyWithImpl<$Res>
    implements $AssessmentModelCopyWith<$Res> {
  _$AssessmentModelCopyWithImpl(this._value, this._then);

  final AssessmentModel _value;
  // ignore: unused_field
  final $Res Function(AssessmentModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? subject = freezed,
    Object? task = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AssessmentModelCopyWith<$Res>
    implements $AssessmentModelCopyWith<$Res> {
  factory _$AssessmentModelCopyWith(
          _AssessmentModel value, $Res Function(_AssessmentModel) then) =
      __$AssessmentModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String subject, String task, String deadline});
}

/// @nodoc
class __$AssessmentModelCopyWithImpl<$Res>
    extends _$AssessmentModelCopyWithImpl<$Res>
    implements _$AssessmentModelCopyWith<$Res> {
  __$AssessmentModelCopyWithImpl(
      _AssessmentModel _value, $Res Function(_AssessmentModel) _then)
      : super(_value, (v) => _then(v as _AssessmentModel));

  @override
  _AssessmentModel get _value => super._value as _AssessmentModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? subject = freezed,
    Object? task = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_AssessmentModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssessmentModel implements _AssessmentModel {
  _$_AssessmentModel(
      {required this.id,
      required this.subject,
      required this.task,
      required this.deadline});

  factory _$_AssessmentModel.fromJson(Map<String, dynamic> json) =>
      _$$_AssessmentModelFromJson(json);

  @override
  final int id;
  @override
  final String subject;
  @override
  final String task;
  @override
  final String deadline;

  @override
  String toString() {
    return 'AssessmentModel(id: $id, subject: $subject, task: $task, deadline: $deadline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AssessmentModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.task, task) &&
            const DeepCollectionEquality().equals(other.deadline, deadline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(task),
      const DeepCollectionEquality().hash(deadline));

  @JsonKey(ignore: true)
  @override
  _$AssessmentModelCopyWith<_AssessmentModel> get copyWith =>
      __$AssessmentModelCopyWithImpl<_AssessmentModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssessmentModelToJson(this);
  }
}

abstract class _AssessmentModel implements AssessmentModel {
  factory _AssessmentModel(
      {required int id,
      required String subject,
      required String task,
      required String deadline}) = _$_AssessmentModel;

  factory _AssessmentModel.fromJson(Map<String, dynamic> json) =
      _$_AssessmentModel.fromJson;

  @override
  int get id;
  @override
  String get subject;
  @override
  String get task;
  @override
  String get deadline;
  @override
  @JsonKey(ignore: true)
  _$AssessmentModelCopyWith<_AssessmentModel> get copyWith =>
      throw _privateConstructorUsedError;
}
