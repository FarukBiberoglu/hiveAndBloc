import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled3/model/user_model.dart';
import 'package:untitled3/repo/user_service.dart';

class GetUserCubit extends Cubit<List<UserModel>> {
  GetUserCubit() : super([]);

  var repo = UserRepo();

  getAllUser() async {
    try {
      var item = await repo.getUsers();
      emit(item);
    } catch (e) {
      print("Hata: $e");
      emit([]);
    }
  }

  saveUser(String userName, String userNumber) async {
    try {
      await repo.saveUser(userName, userNumber);
      getAllUser();
    } catch (e) {
      print("Kullanıcı kaydedilirken hata oluştu: $e");
    }
  }
}
