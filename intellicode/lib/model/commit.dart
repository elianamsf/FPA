class Commit {
  String? _id;
  String? _title;
  String? _status;
  double? _prediction;
  String? _datePushed;
  String? _datePredict;
  String? _dateStatusDefined;
  List<String?> timelineStatusList;

  Commit(
      this._id,
      this._title,
      this._status,
      this._prediction,
      this._datePushed,
      this._datePredict,
      this._dateStatusDefined,
      this.timelineStatusList);

  String? id() {
    return _id;
  }

  String? title() {
    return _title;
  }

  String? status() {
    return _status;
  }

  double? prediction() {
    return _prediction;
  }

  String? datePushed() {
    return _datePushed;
  }

  String? datePredict() {
    return _datePredict;
  }

  String? dateStatusDefined() {
    return _dateStatusDefined;
  }

  set setId(String id) {
    _id = id;
  }

  set setTitle(String title) {
    _title = title;
  }

  set setStatus(String status) {
    _status = status;
  }

  set setPrediction(double prediction) {
    _prediction = prediction;
  }

  set setDatePushed(String datePushed) {
    _datePushed = datePushed;
  }

  set setDatePredict(String datePredict) {
    _datePredict = datePredict;
  }

  set setDateStatusDefined(String dateStatusDefined) {
    _dateStatusDefined = dateStatusDefined;
  }
}
