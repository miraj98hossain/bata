import 'package:bata/config/dependency_injection.dart';
import 'package:bata/data_source/remote_data_source/remote_data_source.dart';
import 'package:flutter/material.dart';

class ToverScreen extends StatefulWidget {
  const ToverScreen({super.key});

  @override
  State<ToverScreen> createState() => _ToverScreenState();
}

class _ToverScreenState extends State<ToverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Tover Screen'),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: 500,
        child: GestureDetector(
          onTap: () async {
            var data = await getService<RemoteDataSource>().getBarData();
            print({"data": data.items!.elementAt(0).x});
          },
          child: const Text('Get Bar Data'),
        ),
      ),
    );
  }
}
