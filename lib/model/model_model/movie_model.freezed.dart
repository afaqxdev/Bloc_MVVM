// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return $_MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  String get total => throw _privateConstructorUsedError; // User token
  int get page => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  @JsonKey(name: "tv_shows")
  List<TvShows> get tvShow => throw _privateConstructorUsedError;

  /// Serializes this MovieModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call(
      {String total,
      int page,
      int pages,
      @JsonKey(name: "tv_shows") List<TvShows> tvShow});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tvShow = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      tvShow: null == tvShow
          ? _value.tvShow
          : tvShow // ignore: cast_nullable_to_non_nullable
              as List<TvShows>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$_MovieModelImplCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$$_MovieModelImplCopyWith(
          _$$_MovieModelImpl value, $Res Function(_$$_MovieModelImpl) then) =
      __$$$_MovieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String total,
      int page,
      int pages,
      @JsonKey(name: "tv_shows") List<TvShows> tvShow});
}

/// @nodoc
class __$$$_MovieModelImplCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$$_MovieModelImpl>
    implements _$$$_MovieModelImplCopyWith<$Res> {
  __$$$_MovieModelImplCopyWithImpl(
      _$$_MovieModelImpl _value, $Res Function(_$$_MovieModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? pages = null,
    Object? tvShow = null,
  }) {
    return _then(_$$_MovieModelImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      tvShow: null == tvShow
          ? _value._tvShow
          : tvShow // ignore: cast_nullable_to_non_nullable
              as List<TvShows>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$_MovieModelImpl implements $_MovieModel {
  _$$_MovieModelImpl(
      {this.total = '',
      this.page = 0,
      this.pages = 0,
      @JsonKey(name: "tv_shows") final List<TvShows> tvShow = const []})
      : _tvShow = tvShow;

  factory _$$_MovieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$$_MovieModelImplFromJson(json);

  @override
  @JsonKey()
  final String total;
// User token
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int pages;
  final List<TvShows> _tvShow;
  @override
  @JsonKey(name: "tv_shows")
  List<TvShows> get tvShow {
    if (_tvShow is EqualUnmodifiableListView) return _tvShow;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tvShow);
  }

  @override
  String toString() {
    return 'MovieModel(total: $total, page: $page, pages: $pages, tvShow: $tvShow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$_MovieModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            const DeepCollectionEquality().equals(other._tvShow, _tvShow));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, pages,
      const DeepCollectionEquality().hash(_tvShow));

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$$_MovieModelImplCopyWith<_$$_MovieModelImpl> get copyWith =>
      __$$$_MovieModelImplCopyWithImpl<_$$_MovieModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$_MovieModelImplToJson(
      this,
    );
  }
}

abstract class $_MovieModel implements MovieModel {
  factory $_MovieModel(
          {final String total,
          final int page,
          final int pages,
          @JsonKey(name: "tv_shows") final List<TvShows> tvShow}) =
      _$$_MovieModelImpl;

  factory $_MovieModel.fromJson(Map<String, dynamic> json) =
      _$$_MovieModelImpl.fromJson;

  @override
  String get total; // User token
  @override
  int get page;
  @override
  int get pages;
  @override
  @JsonKey(name: "tv_shows")
  List<TvShows> get tvShow;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$$_MovieModelImplCopyWith<_$$_MovieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TvShows _$TvShowsFromJson(Map<String, dynamic> json) {
  return $_TvShows.fromJson(json);
}

/// @nodoc
mixin _$TvShows {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "permalink")
  String get permalink => throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  String get startdate => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  String get enddate => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: "network")
  String get network => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "image_thumbnail_path")
  String get imageThumbnailPath => throw _privateConstructorUsedError;

  /// Serializes this TvShows to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TvShowsCopyWith<TvShows> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TvShowsCopyWith<$Res> {
  factory $TvShowsCopyWith(TvShows value, $Res Function(TvShows) then) =
      _$TvShowsCopyWithImpl<$Res, TvShows>;
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "permalink") String permalink,
      @JsonKey(name: "start_date") String startdate,
      @JsonKey(name: "end_date") String enddate,
      @JsonKey(name: "country") String country,
      @JsonKey(name: "network") String network,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "image_thumbnail_path") String imageThumbnailPath});
}

/// @nodoc
class _$TvShowsCopyWithImpl<$Res, $Val extends TvShows>
    implements $TvShowsCopyWith<$Res> {
  _$TvShowsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? permalink = null,
    Object? startdate = null,
    Object? enddate = null,
    Object? country = null,
    Object? network = null,
    Object? status = null,
    Object? imageThumbnailPath = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      startdate: null == startdate
          ? _value.startdate
          : startdate // ignore: cast_nullable_to_non_nullable
              as String,
      enddate: null == enddate
          ? _value.enddate
          : enddate // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbnailPath: null == imageThumbnailPath
          ? _value.imageThumbnailPath
          : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$$_TvShowsImplCopyWith<$Res>
    implements $TvShowsCopyWith<$Res> {
  factory _$$$_TvShowsImplCopyWith(
          _$$_TvShowsImpl value, $Res Function(_$$_TvShowsImpl) then) =
      __$$$_TvShowsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "name") String name,
      @JsonKey(name: "permalink") String permalink,
      @JsonKey(name: "start_date") String startdate,
      @JsonKey(name: "end_date") String enddate,
      @JsonKey(name: "country") String country,
      @JsonKey(name: "network") String network,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "image_thumbnail_path") String imageThumbnailPath});
}

/// @nodoc
class __$$$_TvShowsImplCopyWithImpl<$Res>
    extends _$TvShowsCopyWithImpl<$Res, _$$_TvShowsImpl>
    implements _$$$_TvShowsImplCopyWith<$Res> {
  __$$$_TvShowsImplCopyWithImpl(
      _$$_TvShowsImpl _value, $Res Function(_$$_TvShowsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? permalink = null,
    Object? startdate = null,
    Object? enddate = null,
    Object? country = null,
    Object? network = null,
    Object? status = null,
    Object? imageThumbnailPath = null,
  }) {
    return _then(_$$_TvShowsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      permalink: null == permalink
          ? _value.permalink
          : permalink // ignore: cast_nullable_to_non_nullable
              as String,
      startdate: null == startdate
          ? _value.startdate
          : startdate // ignore: cast_nullable_to_non_nullable
              as String,
      enddate: null == enddate
          ? _value.enddate
          : enddate // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      imageThumbnailPath: null == imageThumbnailPath
          ? _value.imageThumbnailPath
          : imageThumbnailPath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$_TvShowsImpl implements $_TvShows {
  _$$_TvShowsImpl(
      {@JsonKey(name: "name") this.name = '',
      @JsonKey(name: "permalink") this.permalink = '',
      @JsonKey(name: "start_date") this.startdate = '',
      @JsonKey(name: "end_date") this.enddate = '',
      @JsonKey(name: "country") this.country = '',
      @JsonKey(name: "network") this.network = '',
      @JsonKey(name: "status") this.status = '',
      @JsonKey(name: "image_thumbnail_path") this.imageThumbnailPath = ''});

  factory _$$_TvShowsImpl.fromJson(Map<String, dynamic> json) =>
      _$$$_TvShowsImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "permalink")
  final String permalink;
  @override
  @JsonKey(name: "start_date")
  final String startdate;
  @override
  @JsonKey(name: "end_date")
  final String enddate;
  @override
  @JsonKey(name: "country")
  final String country;
  @override
  @JsonKey(name: "network")
  final String network;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "image_thumbnail_path")
  final String imageThumbnailPath;

  @override
  String toString() {
    return 'TvShows(name: $name, permalink: $permalink, startdate: $startdate, enddate: $enddate, country: $country, network: $network, status: $status, imageThumbnailPath: $imageThumbnailPath)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$_TvShowsImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.permalink, permalink) ||
                other.permalink == permalink) &&
            (identical(other.startdate, startdate) ||
                other.startdate == startdate) &&
            (identical(other.enddate, enddate) || other.enddate == enddate) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imageThumbnailPath, imageThumbnailPath) ||
                other.imageThumbnailPath == imageThumbnailPath));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, permalink, startdate,
      enddate, country, network, status, imageThumbnailPath);

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$$_TvShowsImplCopyWith<_$$_TvShowsImpl> get copyWith =>
      __$$$_TvShowsImplCopyWithImpl<_$$_TvShowsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$_TvShowsImplToJson(
      this,
    );
  }
}

abstract class $_TvShows implements TvShows {
  factory $_TvShows(
      {@JsonKey(name: "name") final String name,
      @JsonKey(name: "permalink") final String permalink,
      @JsonKey(name: "start_date") final String startdate,
      @JsonKey(name: "end_date") final String enddate,
      @JsonKey(name: "country") final String country,
      @JsonKey(name: "network") final String network,
      @JsonKey(name: "status") final String status,
      @JsonKey(name: "image_thumbnail_path")
      final String imageThumbnailPath}) = _$$_TvShowsImpl;

  factory $_TvShows.fromJson(Map<String, dynamic> json) =
      _$$_TvShowsImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "permalink")
  String get permalink;
  @override
  @JsonKey(name: "start_date")
  String get startdate;
  @override
  @JsonKey(name: "end_date")
  String get enddate;
  @override
  @JsonKey(name: "country")
  String get country;
  @override
  @JsonKey(name: "network")
  String get network;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "image_thumbnail_path")
  String get imageThumbnailPath;

  /// Create a copy of TvShows
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$$_TvShowsImplCopyWith<_$$_TvShowsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
