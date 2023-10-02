import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:to_do_app/models/tasks_model.dart';

class FirebaseManager{

  static CollectionReference<TasksModel> getTaskCollection(){
    return FirebaseFirestore.instance.collection("Tasks")
        .withConverter(fromFirestore: (snapshot,_){
          return TasksModel.fromJson(snapshot.data()!);
    }
        , toFirestore: (task,_){ //task is object from datamodel class TaskModel
          return task.toJson();
        }
        );
  }

  static void addTask(TasksModel task){
    var collection = getTaskCollection();
    var docReference = collection.doc();
    task.id = docReference.id;
    docReference.set(task);

  }
}