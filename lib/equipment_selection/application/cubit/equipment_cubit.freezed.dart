// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'equipment_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EquipmentState {
  List<EquipmentModel> get availableEquipment =>
      throw _privateConstructorUsedError;
  List<EquipmentModel> get selectedEquipment =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  bool get showSnackBar => throw _privateConstructorUsedError;
  String get showMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EquipmentStateCopyWith<EquipmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EquipmentStateCopyWith<$Res> {
  factory $EquipmentStateCopyWith(
          EquipmentState value, $Res Function(EquipmentState) then) =
      _$EquipmentStateCopyWithImpl<$Res, EquipmentState>;
  @useResult
  $Res call(
      {List<EquipmentModel> availableEquipment,
      List<EquipmentModel> selectedEquipment,
      bool isLoading,
      bool isFailed,
      bool showSnackBar,
      String showMessage});
}

/// @nodoc
class _$EquipmentStateCopyWithImpl<$Res, $Val extends EquipmentState>
    implements $EquipmentStateCopyWith<$Res> {
  _$EquipmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableEquipment = null,
    Object? selectedEquipment = null,
    Object? isLoading = null,
    Object? isFailed = null,
    Object? showSnackBar = null,
    Object? showMessage = null,
  }) {
    return _then(_value.copyWith(
      availableEquipment: null == availableEquipment
          ? _value.availableEquipment
          : availableEquipment // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>,
      selectedEquipment: null == selectedEquipment
          ? _value.selectedEquipment
          : selectedEquipment // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: null == isFailed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      showSnackBar: null == showSnackBar
          ? _value.showSnackBar
          : showSnackBar // ignore: cast_nullable_to_non_nullable
              as bool,
      showMessage: null == showMessage
          ? _value.showMessage
          : showMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EquipmentStateImplCopyWith<$Res>
    implements $EquipmentStateCopyWith<$Res> {
  factory _$$EquipmentStateImplCopyWith(_$EquipmentStateImpl value,
          $Res Function(_$EquipmentStateImpl) then) =
      __$$EquipmentStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<EquipmentModel> availableEquipment,
      List<EquipmentModel> selectedEquipment,
      bool isLoading,
      bool isFailed,
      bool showSnackBar,
      String showMessage});
}

/// @nodoc
class __$$EquipmentStateImplCopyWithImpl<$Res>
    extends _$EquipmentStateCopyWithImpl<$Res, _$EquipmentStateImpl>
    implements _$$EquipmentStateImplCopyWith<$Res> {
  __$$EquipmentStateImplCopyWithImpl(
      _$EquipmentStateImpl _value, $Res Function(_$EquipmentStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableEquipment = null,
    Object? selectedEquipment = null,
    Object? isLoading = null,
    Object? isFailed = null,
    Object? showSnackBar = null,
    Object? showMessage = null,
  }) {
    return _then(_$EquipmentStateImpl(
      availableEquipment: null == availableEquipment
          ? _value._availableEquipment
          : availableEquipment // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>,
      selectedEquipment: null == selectedEquipment
          ? _value._selectedEquipment
          : selectedEquipment // ignore: cast_nullable_to_non_nullable
              as List<EquipmentModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: null == isFailed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      showSnackBar: null == showSnackBar
          ? _value.showSnackBar
          : showSnackBar // ignore: cast_nullable_to_non_nullable
              as bool,
      showMessage: null == showMessage
          ? _value.showMessage
          : showMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EquipmentStateImpl implements _EquipmentState {
  const _$EquipmentStateImpl(
      {required final List<EquipmentModel> availableEquipment,
      required final List<EquipmentModel> selectedEquipment,
      required this.isLoading,
      required this.isFailed,
      required this.showSnackBar,
      required this.showMessage})
      : _availableEquipment = availableEquipment,
        _selectedEquipment = selectedEquipment;

  final List<EquipmentModel> _availableEquipment;
  @override
  List<EquipmentModel> get availableEquipment {
    if (_availableEquipment is EqualUnmodifiableListView)
      return _availableEquipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableEquipment);
  }

  final List<EquipmentModel> _selectedEquipment;
  @override
  List<EquipmentModel> get selectedEquipment {
    if (_selectedEquipment is EqualUnmodifiableListView)
      return _selectedEquipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedEquipment);
  }

  @override
  final bool isLoading;
  @override
  final bool isFailed;
  @override
  final bool showSnackBar;
  @override
  final String showMessage;

  @override
  String toString() {
    return 'EquipmentState(availableEquipment: $availableEquipment, selectedEquipment: $selectedEquipment, isLoading: $isLoading, isFailed: $isFailed, showSnackBar: $showSnackBar, showMessage: $showMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EquipmentStateImpl &&
            const DeepCollectionEquality()
                .equals(other._availableEquipment, _availableEquipment) &&
            const DeepCollectionEquality()
                .equals(other._selectedEquipment, _selectedEquipment) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isFailed, isFailed) ||
                other.isFailed == isFailed) &&
            (identical(other.showSnackBar, showSnackBar) ||
                other.showSnackBar == showSnackBar) &&
            (identical(other.showMessage, showMessage) ||
                other.showMessage == showMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_availableEquipment),
      const DeepCollectionEquality().hash(_selectedEquipment),
      isLoading,
      isFailed,
      showSnackBar,
      showMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EquipmentStateImplCopyWith<_$EquipmentStateImpl> get copyWith =>
      __$$EquipmentStateImplCopyWithImpl<_$EquipmentStateImpl>(
          this, _$identity);
}

abstract class _EquipmentState implements EquipmentState {
  const factory _EquipmentState(
      {required final List<EquipmentModel> availableEquipment,
      required final List<EquipmentModel> selectedEquipment,
      required final bool isLoading,
      required final bool isFailed,
      required final bool showSnackBar,
      required final String showMessage}) = _$EquipmentStateImpl;

  @override
  List<EquipmentModel> get availableEquipment;
  @override
  List<EquipmentModel> get selectedEquipment;
  @override
  bool get isLoading;
  @override
  bool get isFailed;
  @override
  bool get showSnackBar;
  @override
  String get showMessage;
  @override
  @JsonKey(ignore: true)
  _$$EquipmentStateImplCopyWith<_$EquipmentStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
