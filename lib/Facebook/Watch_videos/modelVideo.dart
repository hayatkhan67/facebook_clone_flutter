class VideoData {
  String? name;
  String? profile;
  String? videoUrl;

  VideoData({this.name, this.profile, this.videoUrl});

  VideoData.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    profile = json['profile'];
    videoUrl = json['videoUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['profile'] = this.profile;
    data['videoUrl'] = this.videoUrl;
    return data;
  }
}
