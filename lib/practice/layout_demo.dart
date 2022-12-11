import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: Center(
        child: LayoutDemo(),
      )),
    ),
  );
}

class LayoutDemo extends StatelessWidget {
  const LayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        Column(
          children: [
            const Text('123'),
            const Text('234'),
            Row(
              children: [
                Row(
                  children: const [
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                    Icon(Icons.star),
                  ],
                ),
                const Text('170Reviews')
              ],
            ),
            Row(
              children: [
                Column(
                  children: const [
                    Icon(Icons.book),
                    Text('PREP'),
                    Text('25 MIn'),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.book),
                    Text('COOK'),
                    Text('1 H'),
                  ],
                ),
                Column(
                  children: const [
                    Icon(Icons.book),
                    Text('FEEDS：'),
                    Text('4-6'),
                  ],
                ),
              ],
            )
          ],
        ),
        Expanded(
          child: Image.asset('images/banner.jpg'),
        ),
      ],
    );
  }
}
