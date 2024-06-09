import 'commit.dart';

class NotificationCommit {
  String? _title;
  String? _subtitle;
  String? _status;
  String? _date;
  String? _idCommit;

  NotificationCommit(
      this._title, this._subtitle, this._status, this._date, this._idCommit);

  String? title() {
    return _title;
  }

  String? subtitle() {
    return _subtitle;
  }

  String? status() {
    return _status;
  }

  String? date() {
    return _date;
  }

  String? commit() {
    return _idCommit;
  }

  set setTitle(String title) {
    _title = title;
  }

  set setSubTitle(String subtitle) {
    _subtitle = _subtitle;
  }

  set setStatus(String status) {
    _status = status;
  }

  set setDate(String date) {
    _date = date;
  }

  set setCommit(Commit idCommit) {
    _idCommit = _idCommit;
  }
}
