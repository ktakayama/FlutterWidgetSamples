import 'package:flutter/material.dart';

class DataTableSample extends StatelessWidget {
  const DataTableSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(columns: const [
      DataColumn(label: Text('Label')),
      DataColumn(label: Text('Label')),
      DataColumn(label: Text('Numeric'), numeric: true),
    ], rows: [
      const DataRow(
        cells: [
          DataCell(Text('Cell1-1')),
          DataCell(Text('Cell1-2')),
          DataCell(Text('12345')),
        ],
      ),
      DataRow(
        color: MaterialStateProperty.all(Colors.lightBlue.withOpacity(0.2)),
        cells: const [
          DataCell(Text('Cell2-1')),
          DataCell(Text('Cell2-2')),
          DataCell(Text('12345')),
        ],
      ),
    ]);
  }
}
