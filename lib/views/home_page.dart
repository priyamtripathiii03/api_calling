import 'package:api_calling/provider/api_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ApiProvider apiProvider=Provider.of(context,listen: true);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 5,
        shadowColor: Colors.black,
        title: const Text('Home Page',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      body: ListView.builder(itemBuilder: (context, index) => Card(child: ListTile(
        leading:Text('${apiProvider.postsList[index].id}'),
        title: Text('${apiProvider.postsList[index].title}'),
      ),),),
    );
  }
}
