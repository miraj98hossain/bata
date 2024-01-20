import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ToverScreen extends StatefulWidget {
  const ToverScreen({super.key});

  @override
  State<ToverScreen> createState() => _ToverScreenState();
}

class _ToverScreenState extends State<ToverScreen> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;
  @override
  void initState() {
    data = [
      _ChartData('CHN', 12),
      _ChartData('GER', 15),
      _ChartData('RUS', 30),
      _ChartData('BRZ', 6.4),
      _ChartData('IND', 14)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

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
        child: _buildChart(),
        // child: SfCartesianChart(
        //   primaryXAxis: const CategoryAxis(),
        //   primaryYAxis:
        //       const NumericAxis(minimum: 0, maximum: 40, interval: 10),
        //   tooltipBehavior: _tooltip,
        //   series: <CartesianSeries<_ChartData, String>>[
        //     ColumnSeries<_ChartData, String>(
        //         dataSource: data,
        //         xValueMapper: (_ChartData data, _) => data.x,
        //         yValueMapper: (_ChartData data, _) => data.y,
        //         name: 'Gold',
        //         color: const Color.fromRGBO(8, 142, 255, 1))
        //   ],
        // ),
      ),
    );
  }

  Widget _buildChart() {
    return SfCartesianChart(
      title: const ChartTitle(text: 'Sample Grouped Column Chart'),
      series: <ColumnSeries<SalesData, num>>[
        // First set of columns
        ColumnSeries<SalesData, num>(
          dataSource: <SalesData>[
            SalesData(1, 30),
            SalesData(2, 45),
            SalesData(3, 25),
            SalesData(4, 50),
            SalesData(5, 75),
          ],
          xValueMapper: (SalesData sales, _) => sales.year,
          yValueMapper: (SalesData sales, _) => sales.sales,
          name: 'Set 1',
        ),
        // Second set of columns
        ColumnSeries<SalesData, num>(
          dataSource: <SalesData>[
            SalesData(1, 40),
            SalesData(2, 35),
            SalesData(3, 45),
            SalesData(4, 30),
            SalesData(5, 65),
          ],
          xValueMapper: (SalesData sales, _) => sales.year,
          yValueMapper: (SalesData sales, _) => sales.sales,
          name: 'Set 2',
        ),
        // Third set of columns
        ColumnSeries<SalesData, num>(
          dataSource: <SalesData>[
            SalesData(1, 20),
            SalesData(2, 55),
            SalesData(3, 15),
            SalesData(4, 40),
            SalesData(5, 85),
          ],
          xValueMapper: (SalesData sales, _) => sales.year,
          yValueMapper: (SalesData sales, _) => sales.sales,
          name: 'Set 3',
        ),
      ],
      primaryXAxis: const NumericAxis(title: AxisTitle(text: 'Week')),
      primaryYAxis: const NumericAxis(title: AxisTitle(text: 'Tover')),
      legend: const Legend(isVisible: true),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);

  final String x;
  final double y;
}

class SalesData {
  SalesData(this.year, this.sales);

  final int year;
  final int sales;
}
