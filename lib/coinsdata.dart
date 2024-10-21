// ignore_for_file: library_private_types_in_public_api

import 'package:first_project/Custom_Components/customAppBar.dart';
import 'package:first_project/Data/data.dart';
import 'package:flutter/material.dart';

class Coinsdata extends StatefulWidget {
  const Coinsdata({super.key});

  @override
  _CoinsdataState createState() => _CoinsdataState();
}

class _CoinsdataState extends State<Coinsdata> {
  final List<Coin> _data = List.from(coins);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Coins Data"),
      body: _buildUI(),
    );
  }

  Widget _buildUI() {
    return Scrollbar(
      trackVisibility: true,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
              child:
                  DataTable(columns: _createColumns(), rows: _createRows()))),
    );
  }

  List<DataColumn> _createColumns() {
    return [
      const DataColumn(
        label: Text("Id"),
      ),
      const DataColumn(
        label: Text("Name"),
      ),
      const DataColumn(
        label: Text("Chain Name"),
      ),
      const DataColumn(
        label: Text("Price"),
      ),
      const DataColumn(
        label: Text("24H Change"),
      )
    ];
  }

  List<DataRow> _createRows() {
    return _data.map((e) {
      return DataRow(
        cells: [
          DataCell(
            Text(
              e.id.toString(),
            ),
          ),
          DataCell(
            Text(
              e.name,
            ),
          ),
          DataCell(
            Text(
              e.chiaName,
            ),
          ),
          DataCell(
            Text(
              e.price.toString(),
            ),
          ),
          DataCell(
            Text(
              e.change24h.toString(),
              style:
                  TextStyle(color: e.change24h < 0 ? Colors.red : Colors.black),
            ),
          ),
        ],
      );
    }).toList();
  }
}
