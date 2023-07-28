import 'package:threads_app_ui_design/data/data.dart';
import 'package:threads_app_ui_design/data/thread.dart';

abstract class Ithread{
  List<thread> getThread();
}

class threadRemoteDataSource extends Ithread{

  @override
  List<thread> getThread(){
    return listThread().map((jsonObject) => thread.formJSON(jsonObject)).toList();
  }
}
