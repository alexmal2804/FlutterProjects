import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(const WeatherForecast());

class WeatherForecast extends StatelessWidget {
  const WeatherForecast({Key? key}) : super(key: key);
  final String _regionName = 'Krasnodarskiy Kray, RU';
  final String _weatherSevenDay = '7-day weather forecast';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
        appBar: AppBar(
          title: const Text('Weather Forecast'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            _textFieldRow(),
            const SizedBox(
              height: 20,
            ),
            _textRow(_regionName, 26, Colors.white),
            const SizedBox(height: 20),
            _textRow(_currentDateTime(), 16, Colors.white),
            const SizedBox(height: 20),
            _temperatureDetail(),
            const SizedBox(height: 20),
            _extraWeatherDetail(),
            const SizedBox(height: 20),
            _textRow(_weatherSevenDay, 26, Colors.white),
            const SizedBox(height: 20),
            _sevenDayWeatherDetail()
          ],
        ),
      ),
    );
  }
}

Center _textRow(String textLine, double fSize, Color textColor) {
  Center c = Center(
    child: Text(
      textLine,
      style: TextStyle(
          fontSize: fSize, color: textColor, fontWeight: FontWeight.w200),
    ),
  );
  return c;
}

String _currentDateTime() {
  DateTime now = DateTime.now();
  DateFormat formatter = DateFormat('dd MMMM yyy H:m');
  String f = formatter.format(now);
  //DateTime date = DateTime(now.year, now.month, now.day, now.hour, now.minute);
  return f;
}

Row _textFieldRow() {
  const double _minSpacing = 15.0;
  return Row(
    //mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Icon(
        Icons.search,
        color: Colors.white,
      ),
      const SizedBox(width: _minSpacing),
      SizedBox(
        width: 140,
        child: TextFormField(
          //initialValue: 'Enter City Name',
          decoration: const InputDecoration.collapsed(
            hintText: "Enter City Name",
            hintStyle: TextStyle(color: Colors.white, fontSize: 16),
            border: InputBorder.none,
          ),
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    ],
  );
}

Row _temperatureDetail() {
  const double _minSpacing = 15.0;
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Icon(
        Icons.wb_sunny,
        color: Colors.white,
        size: 74,
      ),
      const SizedBox(width: _minSpacing),
      Column(
        children: const [
          Text(
            '14ºC',
            style: TextStyle(
                fontSize: 52,
                color: Colors.white,
                fontWeight: FontWeight.w200,
                letterSpacing: 5),
          ),
          Text(
            'LIGHT SNOW',
            style: TextStyle(
                fontSize: 22, color: Colors.white, fontWeight: FontWeight.w200),
          ),
        ],
      ),
    ],
  );
}

Widget _extraWeatherDetail() {
  return SizedBox(
    height: 100,
    child: ListView(
      scrollDirection: Axis.horizontal,
      //shrinkWrap: true,
      padding: const EdgeInsets.all(8.0),
      itemExtent: 100,

      children: <Widget>[
        ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Icon(Icons.wb_cloudy, color: Colors.white),
              Text(
                '5',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                '%',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: const [
              Icon(Icons.wb_cloudy, color: Colors.white),
              Text(
                '3',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                '%',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
        ListTile(
          title: Column(
            children: const [
              Icon(Icons.wb_cloudy, color: Colors.white),
              Text(
                '20',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              Text(
                '%',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _sevenDayWeatherDetail() {
  return SizedBox(
    height: 100,
    child: ListView(
      scrollDirection: Axis.horizontal,
      //shrinkWrap: true,
      padding: const EdgeInsets.all(8.0),
      itemExtent: 190,

      children: <Widget>[
        sevenDayListTile('Monday', 22),
        sevenDayListTile('Tuesday', 23),
        sevenDayListTile('Wednesday', 24),
        sevenDayListTile('Thursday', 20),
        sevenDayListTile('Friday', 19),
        sevenDayListTile('Saturday', 21),
        sevenDayListTile('Sunday', 22),
      ],
    ),
  );
}

Widget sevenDayListTile(String dayOfWeek, int temperature) {
  return ListTile(
    title: SizedBox(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(primary: Colors.red[200]),
        child: Column(
          children: [
            Text(
              dayOfWeek,
              style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w200),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$temperatureºC',
                    style: const TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.w200),
                    textAlign: TextAlign.center),
                const SizedBox(width: 10),
                const Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
