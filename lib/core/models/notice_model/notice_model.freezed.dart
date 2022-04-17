// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NoticeModel _$NoticeModelFromJson(Map<String, dynamic> json) {
  return _NoticeModel.fromJson(json);
}

/// @nodoc
class _$NoticeModelTearOff {
  const _$NoticeModelTearOff();

  _NoticeModel call(
      {required String title,
      required String description,
      required String startDate,
      required String endDate}) {
    return _NoticeModel(
      title: title,
      description: description,
      startDate: startDate,
      endDate: endDate,
    );
  }

  NoticeModel fromJson(Map<String, Object?> json) {
    return NoticeModel.fromJson(json);
  }
}

/// @nodoc
const $NoticeModel = _$NoticeModelTearOff();

/// @nodoc
mixin _$NoticeModel {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeModelCopyWith<NoticeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeModelCopyWith<$Res> {
  factory $NoticeModelCopyWith(
          NoticeModel value, $Res Function(NoticeModel) then) =
      _$NoticeModelCopyWithImpl<$Res>;
  $Res call(
      {String title, String description, String startDate, String endDate});
}

/// @nodoc
class _$NoticeModelCopyWithImpl<$Res> implements $NoticeModelCopyWith<$Res> {
  _$NoticeModelCopyWithImpl(this._value, this._then);

  final NoticeModel _value;
  // ignore: unused_field
  final $Res Function(NoticeModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NoticeModelCopyWith<$Res>
    implements $NoticeModelCopyWith<$Res> {
  factory _$NoticeModelCopyWith(
          _NoticeModel value, $Res Function(_NoticeModel) then) =
      __$NoticeModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title, String description, String startDate, String endDate});
}

/// @nodoc
class __$NoticeModelCopyWithImpl<$Res> extends _$NoticeModelCopyWithImpl<$Res>
    implements _$NoticeModelCopyWith<$Res> {
  __$NoticeModelCopyWithImpl(
      _NoticeModel _value, $Res Function(_NoticeModel) _then)
      : super(_value, (v) => _then(v as _NoticeModel));

  @override
  _NoticeModel get _value => super._value as _NoticeModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
  }) {
    return _then(_NoticeModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NoticeModel implements _NoticeModel {
  _$_NoticeModel(
      {required this.title,
      required this.description,
      required this.startDate,
      required this.endDate});

  factory _$_NoticeModel.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeModelFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String startDate;
  @override
  final String endDate;

  @override
  String toString() {
    return 'NoticeModel(title: $title, description: $description, startDate: $startDate, endDate: $endDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoticeModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate));

  @JsonKey(ignore: true)
  @override
  _$NoticeModelCopyWith<_NoticeModel> get copyWith =>
      __$NoticeModelCopyWithImpl<_NoticeModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeModelToJson(this);
  }
}

abstract class _NoticeModel implements NoticeModel {
  factory _NoticeModel(
      {required String title,
      required String description,
      required String startDate,
      required String endDate}) = _$_NoticeModel;

  factory _NoticeModel.fromJson(Map<String, dynamic> json) =
      _$_NoticeModel.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get startDate;
  @override
  String get endDate;
  @override
  @JsonKey(ignore: true)
  _$NoticeModelCopyWith<_NoticeModel> get copyWith =>
      throw _privateConstructorUsedError;
}
