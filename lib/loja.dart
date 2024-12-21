import 'package:flutter/material.dart';
import 'second_loja.dart';

void main() {
  runApp(const loja());
}

class loja extends StatelessWidget {
  const loja({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loja do foguetes-INFO',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Loja do foguetes-INFO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Produto> produtos = [];
  final List<int> quantidade = [0, 0, 0];
  @override
  void initState() {
    super.initState();
    produtos.add(Produto(0, 'Ursinho no foguete', 'images/foguete1_loja.jpg',
        Color.fromARGB(255, 17, 228, 98), 22, 0));
    produtos.add(Produto(1, 'Ônibus espacial lego', 'images/fogute_2.jpg',
        Color.fromARGB(255, 17, 228, 98), 22, 0));
    produtos.add(Produto(2, 'Saturno V lego', 'images/foguete_3.jpg',
        Color.fromARGB(255, 17, 228, 98), 22, 0));
    produtos.add(Produto(2, 'Astronauta lego', 'images/fogute4_loja.png',
        Color.fromARGB(255, 17, 228, 98), 22, 0));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 800,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: produtos.length,
        itemBuilder: (BuildContext context, int index) {
          void _incrementCounter() {
            setState(() {
              quantidade[produtos[index].counter]++;
            });
          }

          void _decrementCounter() {
            setState(() {
              if (quantidade[produtos[index].counter] > 0) {
                quantidade[produtos[index].counter]--;
              }
            });
          }

          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white, produtos[index].color],
                  begin: const FractionalOffset(0.0, 0.0),
                  end: const FractionalOffset(1.0, 0.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
              border: Border.all(color: Color.fromARGB(255, 0, 0, 0), width: 2),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('${produtos[index].imagem}'),
                Flexible(
                  child: Text(
                    '${produtos[index].descricao}',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          _incrementCounter();
                        },
                        icon: Icon(Icons.add)),
                    Text('${quantidade[produtos[index].counter]}'),
                    IconButton(
                        onPressed: () {
                          _decrementCounter();
                        },
                        icon: Icon(Icons.remove)),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      if (quantidade[produtos[index].counter] != 0) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CarrinhoCompras(
                              '${produtos[index].descricao}',
                              '${produtos[index].imagem}',
                              produtos[index].price *
                                  quantidade[produtos[index].counter],
                            ),
                          ),
                        );
                      }
                    },
                    child: Text('Comprar')),
                Padding(padding: EdgeInsets.all(15)),
              ],
            ),
          );
        },
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color.fromARGB(255, 136, 28, 61)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket,
                color: Color.fromARGB(255, 136, 28, 61)),
            label: 'Loja',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Color.fromARGB(255, 136, 28, 61)),
            label: 'Cadastro',
          ),
        ],
//currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 199, 154, 57),
//onTap: _onItemTapped,
      ),
    );
  }
}
