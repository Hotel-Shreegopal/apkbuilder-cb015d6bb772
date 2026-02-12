import '../models/task.dart';

class TaskService {
  static final List<Task> _items = [];
  static int _nextId = 1;

  static Future<List<Task>> getAll() async {
    return List.from(_items);
  }

  static Future<Task?> getById(String id) async {
    try {
      return _items.firstWhere((item) => item.id == id);
    } catch (_) {
      return null;
    }
  }

  static Future<String> create(Task item) async {
    final id = (_nextId++).toString();
    _items.add(item.copyWith(id: id));
    return id;
  }

  static Future<void> update(String id, Task item) async {
    final index = _items.indexWhere((i) => i.id == id);
    if (index >= 0) _items[index] = item.copyWith(id: id);
  }

  static Future<void> delete(String id) async {
    _items.removeWhere((item) => item.id == id);
  }
}
