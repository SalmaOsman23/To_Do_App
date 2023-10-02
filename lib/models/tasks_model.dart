class TasksModel{

  String id;
  String title;
  String description;
  int date;
  bool isDone;
  TasksModel({
    this.id = "",
    required this.title,
    required this.description,
    required this.date,
    this.isDone = false});

  TasksModel.fromJson(Map<String,dynamic>jsonMap)
      :this(
    id: jsonMap['id'],
    title: jsonMap['title'],
    description: jsonMap['description'],
    date: jsonMap['date'],
    isDone: jsonMap['isDone'],
  );

  Map<String,dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "description": description,
      "date": date,
      "isDone": isDone
    };
  }
}