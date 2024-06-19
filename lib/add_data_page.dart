import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'list_provider.dart';

class AddDataPage extends StatelessWidget {
  const AddDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Data'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Provider.of<ListProvider>(context, listen: false).addData({
            'title' : 'Note 1',
            'desc' : 'Do what you love or love what you do.'
          });
          Navigator.pop(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
