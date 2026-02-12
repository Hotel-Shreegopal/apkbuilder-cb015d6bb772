class Task {
  final String title;
  final String description;
  final DateTime due_date;
  final String? id;

  Task({
    this.id,
    required this.title,
    required this.description,
    required this.due_date,
  });

  factory Task.fromMap(Map<String, dynamic> map, {String? id}) {
    return Task(
      id: id ?? map['id'] as String?,
      title: map['title'] as String,
      description: map['description'] as String,
      due_date: map['due_date'] as DateTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'due_date': due_date,
    };
  }

  Task copyWith({
    String? id,
    String? title,
    String? description,
    DateTime? due_date,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      due_date: due_date ?? this.due_date,
    );
  }

  @override
  String toString() {
    return 'Task(title: ${title}, description: ${description}, due_date: ${due_date})';
  }
}
