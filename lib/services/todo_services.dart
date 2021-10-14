import 'package:http/http.dart';

class TodoServices {
  //Fetch all todos
  Future<Response> getAllTodoRequest() async {
    return await get(
        Uri.parse("https://cetacean-ergonomic.cyclic-app.com/todos"));
  }

//Fetching a single todo
  Future<Response> getTodoByIdRequest(String id) async {
    return await get(
        Uri.parse("https://cetacean-ergonomic.cyclic-app.com/todos/$id"));
  }

//create a new todo
  Future<Response> createTodoRequest(
      {required String title,
      required String description,
      required String dateTime}) async {
    Map<String, String> body = {
      "title": title,
      "description": description,
      "date_time": dateTime
    };
    return await post(
        Uri.parse("https://cetacean-ergonomic.cyclic-app.com/todos"),
        body: body);
  }

  //Update a todo
  Future<Response> updateTodoRequest(
      {required bool status, required String id}) async {
    Map<String, bool> body = {"status": status};
    return await patch(
        Uri.parse("https://cetacean-ergonomic.cyclic-app.com/todos/$id"),
        body: body);
  }

  //Delete a todo
  Future<Response> deleteTodoRequest(String id) async {
    return await delete(
        Uri.parse("https://cetacean-ergonomic.cyclic-app.com/todos/$id"));
  }
}
