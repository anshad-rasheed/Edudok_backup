class HomeItem {
  final String title;
  final String icon;
  final String destination;
  final int id;

  HomeItem({this.title, this.icon, this.id, this.destination});

  factory HomeItem.fromJson(Map<String, dynamic> json) {
    return new HomeItem(
      title: json['title'] as String,
      icon: json['icon'] as String,
      destination: json['destination'] as String,
      id: json['id'] as int,
    );
  }
}
