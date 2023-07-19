import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Cash Register'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counterBeer = 0;
  int _counterIpa = 0;
  int _counterDrink = 0;
  double _valueBeer = 0;
  double _valueIpa = 0;
  final double _sizeImg = 80;
  double _valueDrink = 0;
  void _updateValueBeer() {
    setState(() {
      _valueBeer = _counterBeer.toDouble() * 4.0;
    });
  }

  void _updateValueIPA() {
    setState(() {
      _valueIpa = _counterIpa.toDouble() * 5.0;
    });
  }

  void _updateValueDrink() {
    setState(() {
      _valueDrink = _counterDrink.toDouble() * 5.0;
    });
  }

  void _incrementCounterBeer() {
    setState(() {
      _counterBeer++;
      _updateValueBeer();
    });
  }

  void _decrementCounterBeer() {
    setState(() {
      if (_counterBeer > 0) _counterBeer--;
      _updateValueBeer();
    });
  }

  void _incrementCounterIPA() {
    setState(() {
      _counterIpa++;
      _updateValueIPA();
    });
  }

  void _decrementCounterIPA() {
    setState(() {
      if (_counterIpa > 0) _counterIpa--;
      _updateValueIPA();
    });
  }

  void _incrementCounterDrink() {
    setState(() {
      _counterDrink++;
      _updateValueDrink();
    });
  }

  void _decrementCounterDrink() {
    setState(() {
      if (_counterDrink > 0) _counterDrink--;
      _updateValueDrink();
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Table(
              columnWidths: {
                0: FractionColumnWidth(0.1), // fixed to 100 width
                1: FractionColumnWidth(0.15),
                2: FractionColumnWidth(0.35), //fixed to 100 width
                3: FractionColumnWidth(0.05), //fixed to 100 width
                4: FractionColumnWidth(0.1), //fixed to 100 width
                5: FractionColumnWidth(0.05), //fixed to 100 width
                6: FractionColumnWidth(0.1), //fixed to 100 width
                7: FractionColumnWidth(0.1), //fixed to 100 width
              },
              children: [
                TableRow(
                  children: [
                    Image.asset(
                      'images/birra.png',
                      width: _sizeImg,
                      height: _sizeImg,
                    ),
                    Text(
                      'Birra',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: _incrementCounterBeer,
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            foregroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                          ),
                          child: const Text('+'),
                        ),
                        ElevatedButton(
                          onPressed: _decrementCounterBeer,
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            foregroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                          ),
                          child: const Text('-'),
                        ),
                      ],
                    ),
                    Text(
                      'N.',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      '$_counterBeer',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      '€',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      '$_valueBeer',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Image.asset(
                      'images/birra.png',
                      width: _sizeImg,
                      height: _sizeImg,
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Birra IPA',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: _incrementCounterIPA,
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            foregroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                            minimumSize: Size(100, 40),
                          ),
                          child: const Text('+'),
                        ),
                        ElevatedButton(
                          onPressed: _decrementCounterIPA,
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            foregroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                            minimumSize: Size(100, 40),
                          ),
                          child: const Text('-'),
                        ),
                      ],
                    ),
                    Text(
                      'N.',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      '$_counterIpa',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      '€',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      '$_valueIpa',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Image.asset(
                      'images/cocktail-icon.png',
                      width: _sizeImg,
                      height: _sizeImg,
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Drink',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: _incrementCounterDrink,
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            foregroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                            minimumSize: Size(100, 40),
                          ),
                          child: const Text('+'),
                        ),
                        ElevatedButton(
                          onPressed: _decrementCounterDrink,
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            foregroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                            minimumSize: Size(100, 40),
                          ),
                          child: const Text('-'),
                        ),
                      ],
                    ),
                    Text(
                      'N.',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      '$_counterDrink',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      '€',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      '$_valueDrink',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),
                                TableRow(
                  children: [
                    Image.asset(
                      'images/cocktail-icon.png',
                      width: _sizeImg,
                      height: _sizeImg,
                    ),
                    SizedBox(
                      width: 100,
                      child: Text(
                        'Drink',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: _incrementCounterDrink,
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            foregroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                            minimumSize: Size(100, 40),
                          ),
                          child: const Text('+'),
                        ),
                        ElevatedButton(
                          onPressed: _decrementCounterDrink,
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Theme.of(context).colorScheme.primary,
                            foregroundColor:
                                Theme.of(context).colorScheme.onPrimary,
                            minimumSize: Size(100, 40),
                          ),
                          child: const Text('-'),
                        ),
                      ],
                    ),
                    Text(
                      'N.',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      '$_counterDrink',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      '€',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    Text(
                      '$_valueDrink',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
