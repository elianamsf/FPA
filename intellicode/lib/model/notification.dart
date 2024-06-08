import 'commit.dart';

class NotificationCommit {
  String? _title;
  String? _status;
  String? _date;
  Commit? _commit;

  NotificationCommit();

  String? title() {
    return _title;
  }

  String? status() {
    return _status;
  }

  String? date() {
    return _date;
  }

  Commit? commit() {
    return _commit;
  }

  set setTitle(String title) {
    _title = title;
  }

  set setStatus(String status) {
    _status = status;
  }

  set setDate(String date) {
    _date = date;
  }

  set setCommit(Commit commit) {
    _commit = commit;
  }
}
