import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_263/add_data_page.dart';
import 'package:provider_263/list_provider.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    print("build called");

    List<Map<String, dynamic>> allData = Provider.of<ListProvider>(context).getData();
    return Scaffold(
      appBar: AppBar(
        title: Text('All Data'),
      ),
      body: ListView.builder(
        itemCount: allData.length,
          itemBuilder: (_, index){
          return ListTile(
            title: Text('${allData[index]['title']}'),
            subtitle: Text('${allData[index]['desc']}'),
            trailing: InkWell(
              onTap: (){
                Provider.of<ListProvider>(context, listen: false).deleteData(index);
              },
                child: Icon(Icons.delete)),
          );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ///
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddDataPage(),));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
