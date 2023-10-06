import 'dart:convert';

class ProfilePicture {
  String? filename;
  String? eTag;
  DateTime? updatedAt;

  ProfilePicture({this.filename, this.eTag, this.updatedAt});

  @override
  String toString() {
    return 'ProfilePicture(filename: $filename, eTag: $eTag, updatedAt: $updatedAt)';
  }

  factory ProfilePicture.fromMap(Map<String, dynamic> data) {
    return ProfilePicture(
      filename: data['filename'] as String?,
      eTag: data['eTag'] as String?,
      updatedAt: data['updatedAt'] == null
          ? null
          : DateTime.parse(data['updatedAt'] as String),
    );
  }

  Map<String, dynamic> toMap() => {
        'filename': filename,
        'eTag': eTag,
        'updatedAt': updatedAt?.toIso8601String(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ProfilePicture].
  factory ProfilePicture.fromJson(String data) {
    return ProfilePicture.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ProfilePicture] to a JSON string.
  String toJson() => json.encode(toMap());

  ProfilePicture copyWith({
    String? filename,
    String? eTag,
    DateTime? updatedAt,
  }) {
    return ProfilePicture(
      filename: filename ?? this.filename,
      eTag: eTag ?? this.eTag,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
