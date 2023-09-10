// ignore_for_file: file_names

class VideoData {
  String? name;
  String? profile;
  String? videoTitle;
  String? videoUrl;

  VideoData({this.name, this.profile, this.videoTitle, this.videoUrl});

  VideoData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    profile = json['profile'];
    videoTitle = json['videoTitle'];
    videoUrl = json['videoUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['profile'] = profile;
    data['videoTitle'] = videoTitle;
    data['videoUrl'] = videoUrl;
    return data;
  }
}
