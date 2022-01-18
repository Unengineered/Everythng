import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_list.freezed.dart';

@freezed
class UserList with _$UserList {
  const factory UserList({
    required String listName,
    required List<String> list,
  }) = _UserList;

  factory UserList.fromJson(Map<String, dynamic> json) {
    return UserList(listName: json.entries.first.key, list: List<String>.from(json[json.entries.first.key]));
    
  }
}

List<UserList> listOfUserListfromMap(Map<String, dynamic> json) {
  return json.entries
      .map<UserList>((e) => UserList(listName: e.key, list: List<String>.from(e.value)))
      .toList();
}
