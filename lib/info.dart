import 'package:flutter/material.dart';
import 'second.dart';
import 'verificacao.dart';
import 'exploracao.dart';

void main() {
  runApp(const info());
}

class info extends StatelessWidget {
  const info({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cronograma de Lançamentos',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: const MyHomePage(title: 'Cronograma de Lançamentos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => info_();
}

class info_ extends State<MyHomePage> {
  final List<Foguete> foguetes = [];
  final List<int> quantidade = [0, 0, 0];
  @override
  void initState() {
    super.initState();
    foguetes.add(Foguete(
        1,
        'Falcon 9 • Starlink 4-23',
        "O Starlink da SpaceX é a constelação de satélites em rede destinados a fornecer serviços de internet para aqueles que ainda não estão conectados e fornecer internet confiável e acessível em todo o mundo.",
        Colors.green,
        "Lançamento do foguete: 28 de agosto de 2022 | 10:22 p.m |",
        "Local: LC-39A, Kennedy Space Center, Florida",
        "images/falcon9.png"));
    foguetes.add(Foguete(
        2,
        'Space Launch System • Artemis 1',
        "Foguete de carga pesada do Sistema de Lançamento Espacial da NASA será lançado em seu primeiro voo de teste com uma espaçonave Orion não tripulada. A missão, conhecida como Artemis 1, colocará a espaçonave Orion em órbita ao redor da lua antes que a cápsula retorne à Terra para mergulhar no Oceano Pacífico. ",
        Colors.green,
        "Lançamento do foguete: 29 de agosto | 8:33-10:33 a.m. |",
        "Local:  LC-39B, Kennedy Space Center, Flórida",
        "images/sls.jpg"));
    foguetes.add(Foguete(
        3,
        'Alpha • Multi-payload',
        "Um foguete Firefly Alpha será lançado em seu segundo voo de teste com uma carga útil de carona composta por vários pequenos satélites não especificados.",
        Colors.green,
        "Lançamento do foguete: 11 de setembro de 2022 | TBD |",
        "Local: SLC-2W, Vandenberg Space Force Base, California",
        "images/firefly.jpg"));
    foguetes.add(Foguete(
        4,
        'Delta 4-Heavy • NROL-91',
        "Um foguete Delta 4-Heavy da United Launch Alliance lançará uma carga classificada para o National Reconnaissance Office, a agência de satélites espiões do governo dos EUA.",
        Colors.green,
        "Lançamento do foguete: Setembro de 2022 | TBD |",
        "Local:  SLC-6, Vandenberg Space Force Base, California",
        "images/delta.jpg"));
    foguetes.add(Foguete(
        5,
        'Starship • Orbital Test Flight',
        "Um veículo de lançamento SpaceX Super Heavy e Starship será lançado em seu primeiro voo de teste orbital. A missão tentará viajar ao redor do mundo por quase uma órbita completa, resultando em uma reentrada e queda da nave perto do Havaí. Atrasado desde o início de 2022.",
        Colors.green,
        "Lançamento do foguete: Setembro de 2022 | TBD |",
        "Local:  Starbase, Boca Chica Beach, Texas",
        "images/starship.jpg"));
    foguetes.add(Foguete(
        6,
        'Soyuz • ISS 68S',
        "Um foguete Soyuz do governo russo lançará a espaçonave tripulada Soyuz MS-22 para a Estação Espacial Internacional com a próxima equipe de três cosmonautas e astronautas a viver e trabalhar no complexo. A tripulação é liderada pelo comandante Sergey Prokopyev, que será acompanhado pelo engenheiro de voo russo Dmitry Petelin e pelo astronauta da NASA Frank Rubio. O foguete voará na configuração Soyuz-2.1a.",
        Colors.green,
        "Lançamento do foguete: 21 de setembro de 2022 | TBD |",
        "Local:  Baikonur Cosmodrome, Kazakhstans",
        "images/soyuz.jpg"));
    foguetes.add(Foguete(
        7,
        'Falcon 9 • Crew 5',
        "O foguete SpaceX Falcon 9 lançará uma espaçonave Crew Dragon em seu oitavo voo com astronautas. O primeiro booster de estágio do Falcon 9 pousará em um navio drone no Oceano Atlântico. Os astronautas da NASA Nicole Mann, Josh Cassada, o astronauta japonês Koichi Wakata e a cosmonauta russa Anna Kikina serão lançados na espaçonave Crew Dragon para iniciar uma expedição de seis meses na Estação Espacial Internacional.",
        Colors.green,
        "Lançamento do foguete: 29 de setembro de 2022 | TBD |",
        "Local:  LC-39A, Kennedy Space Center, Florida",
        "images/falcon9.png"));
    foguetes.add(Foguete(
        8,
        'Falcon Heavy • ViaSat 3 Americas',
        "Um foguete SpaceX Falcon Heavy lançará o satélite de comunicações de banda larga ViaSat 3 Americas. O ViaSat 3 Americas é o primeiro de pelo menos três satélites geoestacionários de nova geração construídos pela Boeing para a ViaSat. Um pequeno satélite de comunicações chamado Arcturus será lançado como uma carga secundária para o Astranis.",
        Colors.green,
        "Lançamento do foguete: Outubro de 2022 | TBD |",
        "Local:  LC-39A, Kennedy Space Center, Florida",
        "images/FalconHeavy.jpg"));
    foguetes.add(Foguete(
        9,
        'Vulcan Centaur • Peregrine',
        "Um foguete Vulcan Centaur da United Launch Alliance será lançado em seu voo inaugural com o módulo lunar comercial Peregrine para a Astrobotic. O módulo de pouso robótico Peregrine levará vários experimentos, instrumentos científicos e cargas úteis de demonstração de tecnologia para a NASA e outros clientes.",
        Colors.green,
        "Lançamento do foguete: Final de 2022 | TBD |",
        "Local: SLC-41, Cape Canaveral Space Force Station, Florida",
        "images/vulcanCentaur.jpg"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
              icon: const Icon(Icons.rocket),
              tooltip: 'Exploração Espacial',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => exploracao()));
              }),
        ],
      ),
      body: GridView.builder(
        primary: false,
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 800,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemCount: foguetes.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.white, foguetes[index].color],
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
                Image.asset(
                  '${foguetes[index].imagem}',
                  height: 200,
                  width: 200,
                ),
                Flexible(
                  child: Text(
                    '${foguetes[index].texto}',
                    style: TextStyle(
                      color: Color.fromARGB(255, 73, 73, 73),
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => lancamentosFoguetes(
                              foguetes[index].id,
                              '${foguetes[index].missao}',
                              '${foguetes[index].texto}',
                              '${foguetes[index].horario}',
                              '${foguetes[index].local}',
                              '${foguetes[index].imagem}'),
                        ),
                      );
                    },
                    child: Text('Ver mais')),
                Padding(padding: EdgeInsets.all(15)),
              ],
            ),
          );
        },
      ),
    );
  }
}
