import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_12_9/core/viewmodels/product_vm.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  ProductVm pvm = ProductVm();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("products"),),
        body: FutureBuilder(
          future: pvm.getProducts(),
          builder: (ctx,snapshot){
            if(snapshot.connectionState==ConnectionState.done)
            {
              return ListView.builder(
                itemCount:snapshot.data!.length ,
                itemBuilder: (ctx,index){
                  return Container(child: Column(children: [
                    Image.network(snapshot.data![index].image!),
                    ListTile(title: Text(snapshot.data![index].title!),
                      leading: CircleAvatar(child: Center(child: Text('${snapshot.data![index].price}',style: TextStyle(fontSize: 13),),),),
                    )
                  ],),);
                },
              );
            }
            else
              return Center(child: CircularProgressIndicator(),);
          },
        )
    );
  }
}
