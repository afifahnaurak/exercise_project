class ToDo {
  String id;
  String todoText;
  bool isDone;

  ToDo({
    this.id,
    this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id: '01', todoText: 'Morning Excercise', isDone: true ),
      ToDo(id: '02', todoText: 'Legs Workout 1', isDone: true ),
      ToDo(id: '03', todoText: 'Arm Workout', ),
      ToDo(id: '04', todoText: 'Morining Exercise', ),
      ToDo(id: '05', todoText: 'Legs Workout 2', ),
      ToDo(id: '06', todoText: 'Hips Workout', isDone: true ),
      ToDo(id: '07', todoText: 'Abs Workout', isDone: true ),
    ];
  }
}