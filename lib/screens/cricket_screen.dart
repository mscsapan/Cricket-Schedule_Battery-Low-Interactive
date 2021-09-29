import 'package:battery_low_interactive/model/schedule_model.dart';
import 'package:battery_low_interactive/network/network_service.dart';
import 'package:flutter/material.dart';

class CricketScreen extends StatefulWidget {
  const CricketScreen({Key? key}) : super(key: key);

  @override
  _CricketScreenState createState() => _CricketScreenState();
}

class _CricketScreenState extends State<CricketScreen> {
  NetworkService service = NetworkService();
  List<Schedule>? schedule;
  late bool loading;

  void loadData() {
    setState(() {
      loading = true;
    });
    service.getSchedule().then((value) {
      if (value.isNotEmpty) {
        for (var i = 0; i < value.length; i++) {
          setState(() {
            if (schedule != null) {
              schedule!.add(value[i]);
            }
            loading = false;
          });
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(loading ? 'Loading...' : 'Schedule'),
        centerTitle: true,
      ),
      body: loading
          ? const Center(child: CircularProgressIndicator())
          : FutureBuilder<List<Schedule>>(
              future: service.getSchedule(),
              builder: (context, AsyncSnapshot<List<Schedule>> snapshot) {
                return ListView.builder(
                    itemCount:
                        snapshot.data != null ? snapshot.data!.length : 0,
                    itemBuilder: (context, position) {
                      final Schedule _schedule = snapshot.data![position];
                      return snapshot.hasData
                          ? Column(
                              children: [
                                Text(
                                    '${_schedule.response!.items![0].competitionsUrl}'),
                                Text('${_schedule.response!.items![1].name}'),
                                Text('${_schedule.response!.items![2].name}'),
                              ],
                            )
                          : const Center(child: CircularProgressIndicator());
                    });
              },
            ),
    );
  }
}
