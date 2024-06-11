import 'package:flutter/material.dart';
import 'package:intellicode/model/commit.dart';
import 'package:intellicode/controller/commit_controller.dart';
import 'package:timelines/timelines.dart';

const kTileHeight = 80.0;

class CommitPage extends StatefulWidget {
  const CommitPage({super.key, required this.commit});

  final Commit commit;

  @override
  State<CommitPage> createState() => _CommitPageState();
}

class _CommitPageState extends State<CommitPage> {
  late Commit _currentCommit;
  late Icon iconStatusCommit;

  @override
  void initState() {
    _currentCommit = widget.commit;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '${_currentCommit.title()}',
        ),
        shadowColor: Colors.red,
        backgroundColor: Colors.purple,
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Card(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 40, right: 70, top: 20, bottom: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 200,
                  child: getCommitIcon(
                    _currentCommit.status(),
                  ),
                ),
                Text(
                  'Predição: ${_currentCommit.prediction()}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20.0),
                ),
                const SizedBox(height: 12.0),
                Text(
                  'Status: ${_currentCommit.status()}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20.0),
                ),
                const SizedBox(height: 12.0),
                Text(
                  'Timeline: ',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 20.0),
                ),
                //const SizedBox(height: 5.0),
                _Timeline1(
                  commit: _currentCommit,
                ),
                const SizedBox(height: 12.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Timeline1 extends StatelessWidget {
  const _Timeline1({super.key, required this.commit});

  final Commit commit;

  @override
  Widget build(BuildContext context) {
    final data = _TimelineStatus.values;
    return Flexible(
      child: Timeline.tileBuilder(
        theme: TimelineThemeData(
          nodePosition: 0,
          connectorTheme: const ConnectorThemeData(
            thickness: 3.0,
            color: Color(0xffd3d3d3),
          ),
          indicatorTheme: const IndicatorThemeData(
            size: 45.0,
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        builder: TimelineTileBuilder.connected(
          contentsBuilder: (context, index) => Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '${commit.timelineStatusList[index]}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20.0),
              ),
            ),
          ),
          connectorBuilder: (_, index, __) {
            return getConectorTimeline(commit.timelineStatusList[index]);
          },
          indicatorBuilder: (_, index) {
            return getDataTimeline(commit.timelineStatusList[index]);
          },
          itemExtentBuilder: (_, __) => kTileHeight,
          itemCount: data.length,
        ),
      ),
    );
  }
}

class _EmptyContents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0),
      height: 10.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.0),
        color: const Color(0xffe6e7e9),
      ),
    );
  }
}

enum _TimelineStatus {
  done,
  sync,
  inProgress,
  todo,
}

extension on _TimelineStatus {
  bool get isInProgress => this == _TimelineStatus.inProgress;
}
