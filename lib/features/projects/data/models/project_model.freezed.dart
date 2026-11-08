// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'project_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProjectModel {

 String get id; String get title; String get shortDescription; String get fullDescription; String get status; String get iconPath; String get bannerPath; List<String> get techStack; List<String> get keyFeatures; String get githubUrl;
/// Create a copy of ProjectModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProjectModelCopyWith<ProjectModel> get copyWith => _$ProjectModelCopyWithImpl<ProjectModel>(this as ProjectModel, _$identity);

  /// Serializes this ProjectModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProjectModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProjectModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.title, _this.title) || other.title == _this.title)&&(identical(other.shortDescription, _this.shortDescription) || other.shortDescription == _this.shortDescription)&&(identical(other.fullDescription, _this.fullDescription) || other.fullDescription == _this.fullDescription)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.iconPath, _this.iconPath) || other.iconPath == _this.iconPath)&&(identical(other.bannerPath, _this.bannerPath) || other.bannerPath == _this.bannerPath)&&const DeepCollectionEquality().equals(other.techStack, _this.techStack)&&const DeepCollectionEquality().equals(other.keyFeatures, _this.keyFeatures)&&(identical(other.githubUrl, _this.githubUrl) || other.githubUrl == _this.githubUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProjectModel;
  return Object.hash(runtimeType,_this.id,_this.title,_this.shortDescription,_this.fullDescription,_this.status,_this.iconPath,_this.bannerPath,const DeepCollectionEquality().hash(_this.techStack),const DeepCollectionEquality().hash(_this.keyFeatures),_this.githubUrl);
}

@override
String toString() {
  final _this = this as ProjectModel;
  return 'ProjectModel(id: ${_this.id}, title: ${_this.title}, shortDescription: ${_this.shortDescription}, fullDescription: ${_this.fullDescription}, status: ${_this.status}, iconPath: ${_this.iconPath}, bannerPath: ${_this.bannerPath}, techStack: ${_this.techStack}, keyFeatures: ${_this.keyFeatures}, githubUrl: ${_this.githubUrl})';
}


}

/// @nodoc
abstract mixin class $ProjectModelCopyWith<$Res>  {
  factory $ProjectModelCopyWith(ProjectModel value, $Res Function(ProjectModel) _then) = _$ProjectModelCopyWithImpl;
@useResult
$Res call({
 String id, String title, String shortDescription, String fullDescription, String status, String iconPath, String bannerPath, List<String> techStack, List<String> keyFeatures, String githubUrl
});




}
/// @nodoc
class _$ProjectModelCopyWithImpl<$Res>
    implements $ProjectModelCopyWith<$Res> {
  _$ProjectModelCopyWithImpl(this._self, this._then);

  final ProjectModel _self;
  final $Res Function(ProjectModel) _then;

/// Create a copy of ProjectModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? shortDescription = null,Object? fullDescription = null,Object? status = null,Object? iconPath = null,Object? bannerPath = null,Object? techStack = null,Object? keyFeatures = null,Object? githubUrl = null,}) {
  return _then(ProjectModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,shortDescription: null == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String,fullDescription: null == fullDescription ? _self.fullDescription : fullDescription // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,iconPath: null == iconPath ? _self.iconPath : iconPath // ignore: cast_nullable_to_non_nullable
as String,bannerPath: null == bannerPath ? _self.bannerPath : bannerPath // ignore: cast_nullable_to_non_nullable
as String,techStack: null == techStack ? _self.techStack : techStack // ignore: cast_nullable_to_non_nullable
as List<String>,keyFeatures: null == keyFeatures ? _self.keyFeatures : keyFeatures // ignore: cast_nullable_to_non_nullable
as List<String>,githubUrl: null == githubUrl ? _self.githubUrl : githubUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProjectModel].
extension ProjectModelPatterns on ProjectModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProjectModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProjectModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProjectModel value)  $default,){
final _that = this;
switch (_that) {
case _ProjectModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProjectModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProjectModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String shortDescription,  String fullDescription,  String status,  String iconPath,  String bannerPath,  List<String> techStack,  List<String> keyFeatures,  String githubUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProjectModel() when $default != null:
return $default(_that.id,_that.title,_that.shortDescription,_that.fullDescription,_that.status,_that.iconPath,_that.bannerPath,_that.techStack,_that.keyFeatures,_that.githubUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String shortDescription,  String fullDescription,  String status,  String iconPath,  String bannerPath,  List<String> techStack,  List<String> keyFeatures,  String githubUrl)  $default,) {final _that = this;
switch (_that) {
case _ProjectModel():
return $default(_that.id,_that.title,_that.shortDescription,_that.fullDescription,_that.status,_that.iconPath,_that.bannerPath,_that.techStack,_that.keyFeatures,_that.githubUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String shortDescription,  String fullDescription,  String status,  String iconPath,  String bannerPath,  List<String> techStack,  List<String> keyFeatures,  String githubUrl)?  $default,) {final _that = this;
switch (_that) {
case _ProjectModel() when $default != null:
return $default(_that.id,_that.title,_that.shortDescription,_that.fullDescription,_that.status,_that.iconPath,_that.bannerPath,_that.techStack,_that.keyFeatures,_that.githubUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProjectModel implements ProjectModel {
  const _ProjectModel({required this.id, required this.title, required this.shortDescription, required this.fullDescription, required this.status, required this.iconPath, required this.bannerPath, required  List<String> techStack, required  List<String> keyFeatures, required this.githubUrl}): _techStack = techStack,_keyFeatures = keyFeatures;
  factory _ProjectModel.fromJson(Map<String, dynamic> json) => _$ProjectModelFromJson(json);

@override final  String id;
@override final  String title;
@override final  String shortDescription;
@override final  String fullDescription;
@override final  String status;
@override final  String iconPath;
@override final  String bannerPath;
 final  List<String> _techStack;
@override List<String> get techStack {
  if (_techStack is EqualUnmodifiableListView) return _techStack;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_techStack);
}

 final  List<String> _keyFeatures;
@override List<String> get keyFeatures {
  if (_keyFeatures is EqualUnmodifiableListView) return _keyFeatures;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_keyFeatures);
}

@override final  String githubUrl;

/// Create a copy of ProjectModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProjectModelCopyWith<_ProjectModel> get copyWith => __$ProjectModelCopyWithImpl<_ProjectModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProjectModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProjectModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&(identical(other.fullDescription, fullDescription) || other.fullDescription == fullDescription)&&(identical(other.status, status) || other.status == status)&&(identical(other.iconPath, iconPath) || other.iconPath == iconPath)&&(identical(other.bannerPath, bannerPath) || other.bannerPath == bannerPath)&&const DeepCollectionEquality().equals(other.techStack, _techStack)&&const DeepCollectionEquality().equals(other.keyFeatures, _keyFeatures)&&(identical(other.githubUrl, githubUrl) || other.githubUrl == githubUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,title,shortDescription,fullDescription,status,iconPath,bannerPath,const DeepCollectionEquality().hash(_techStack),const DeepCollectionEquality().hash(_keyFeatures),githubUrl);
}

@override
String toString() {
    return 'ProjectModel(id: $id, title: $title, shortDescription: $shortDescription, fullDescription: $fullDescription, status: $status, iconPath: $iconPath, bannerPath: $bannerPath, techStack: $techStack, keyFeatures: $keyFeatures, githubUrl: $githubUrl)';
}


}

/// @nodoc
abstract mixin class _$ProjectModelCopyWith<$Res> implements $ProjectModelCopyWith<$Res> {
  factory _$ProjectModelCopyWith(_ProjectModel value, $Res Function(_ProjectModel) _then) = __$ProjectModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String shortDescription, String fullDescription, String status, String iconPath, String bannerPath, List<String> techStack, List<String> keyFeatures, String githubUrl
});




}
/// @nodoc
class __$ProjectModelCopyWithImpl<$Res>
    implements _$ProjectModelCopyWith<$Res> {
  __$ProjectModelCopyWithImpl(this._self, this._then);

  final _ProjectModel _self;
  final $Res Function(_ProjectModel) _then;

/// Create a copy of ProjectModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? shortDescription = null,Object? fullDescription = null,Object? status = null,Object? iconPath = null,Object? bannerPath = null,Object? techStack = null,Object? keyFeatures = null,Object? githubUrl = null,}) {
  return _then(_ProjectModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,shortDescription: null == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String,fullDescription: null == fullDescription ? _self.fullDescription : fullDescription // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,iconPath: null == iconPath ? _self.iconPath : iconPath // ignore: cast_nullable_to_non_nullable
as String,bannerPath: null == bannerPath ? _self.bannerPath : bannerPath // ignore: cast_nullable_to_non_nullable
as String,techStack: null == techStack ? _self._techStack : techStack // ignore: cast_nullable_to_non_nullable
as List<String>,keyFeatures: null == keyFeatures ? _self._keyFeatures : keyFeatures // ignore: cast_nullable_to_non_nullable
as List<String>,githubUrl: null == githubUrl ? _self.githubUrl : githubUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
