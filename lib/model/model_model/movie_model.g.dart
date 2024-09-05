// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$$_MovieModelImpl _$$$_MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$$_MovieModelImpl(
      total: json['total'] as String? ?? '',
      page: (json['page'] as num?)?.toInt() ?? 0,
      pages: (json['pages'] as num?)?.toInt() ?? 0,
      tvShow: (json['tv_shows'] as List<dynamic>?)
              ?.map((e) => TvShows.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$$_MovieModelImplToJson(_$$_MovieModelImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'pages': instance.pages,
      'tv_shows': instance.tvShow,
    };

_$$_TvShowsImpl _$$$_TvShowsImplFromJson(Map<String, dynamic> json) =>
    _$$_TvShowsImpl(
      name: json['name'] as String? ?? '',
      permalink: json['permalink'] as String? ?? '',
      startdate: json['start_date'] as String? ?? '',
      enddate: json['end_date'] as String? ?? '',
      country: json['country'] as String? ?? '',
      network: json['network'] as String? ?? '',
      status: json['status'] as String? ?? '',
      imageThumbnailPath: json['image_thumbnail_path'] as String? ?? '',
    );

Map<String, dynamic> _$$$_TvShowsImplToJson(_$$_TvShowsImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'permalink': instance.permalink,
      'start_date': instance.startdate,
      'end_date': instance.enddate,
      'country': instance.country,
      'network': instance.network,
      'status': instance.status,
      'image_thumbnail_path': instance.imageThumbnailPath,
    };
