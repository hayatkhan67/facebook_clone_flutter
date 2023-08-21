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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['profile'] = this.profile;
    data['videoTitle'] = this.videoTitle;
    data['videoUrl'] = this.videoUrl;
    return data;
  }
}
