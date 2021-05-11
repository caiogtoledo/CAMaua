import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
//import 'package:slidy_testes/app/modules/home/home_store.dart';

import 'components/card_widget.dart';
import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          //height: MediaQuery.of(context).size.height,
          //child: Container(
          //width: 600,
          height: 400,
          //decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CardProduto(
                          title: 'Red Bull',
                          pathImage: 'assets/RedBull2.jpg',
                          options: ['Amr', 'Ver'],
                        ),
                        CardProduto(
                          title: 'Moletom Masc',
                          pathImage: 'assets/Moletom.jpg',
                          options: ['PP', 'P', 'M', 'G', 'GG'],
                        ),
                        CardProduto(
                          title: 'Moletom Fem',
                          pathImage: 'assets/Moletom.jpg',
                          options: ['P', 'M', 'G', 'GG'],
                        ),
                        CardProduto(
                          title: 'Moletom 2020 Masc',
                          pathImage: 'assets/Moletom.jpg',
                          options: ['P', 'M', 'G'],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Card(
                    elevation: 8,
                    //shadowColor: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Seu carrinho:'),
                              SizedBox(width: 8),
                              TextButton(
                                  onPressed: () {}, child: Text('Limpar')),
                            ],
                          ),
                          Divider(
                            height: 20,
                          ),
                          Text('Preço Total: RS'),
                          Text('Insira um colaborador'),
                          SizedBox(height: 10),
                          SizedBox(
                            width: 150,
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(Icons.add_shopping_cart),
                                )),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ) //),
          ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          store.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
