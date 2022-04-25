import 'package:flutter/material.dart';

class TableSample extends StatelessWidget {
  const TableSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: Colors.red, width: 2),
      children: [
        TableRow(children: [
          Container(
              height: 64, color: Colors.blue, child: const Text('container')),
          const TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Text('cell1')),
          const TableCell(child: Text('cell2'))
        ]),
        TableRow(children: [
          Container(
              height: 64, color: Colors.blue, child: const Text('container')),
          const TableCell(child: Text('cell1')),
          const TableCell(child: Text('cell2'))
        ]),
        TableRow(
            decoration: const BoxDecoration(color: Colors.grey),
            children: [
              Container(
                  height: 64,
                  color: Colors.blue,
                  child: const Text('container')),
              const TableCell(child: Text('cell1')),
              const TableCell(child: Text('cell2'))
            ]),
      ],
    );
  }
}
