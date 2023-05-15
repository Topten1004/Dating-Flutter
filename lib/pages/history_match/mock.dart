import 'package:dart_mock/dart_mock.dart' as mock;
import 'package:flutter_dating_template/wcao/kit/index.dart';

class MockHistoryMatch {
  static final List<MockHistoryMatch> _data = [];

  final String nickName;
  final int age;

  ///  女 男 其他
  final String sex;
  final String constellation;
  final String avatar;

  MockHistoryMatch({
    required this.nickName,
    required this.age,
    required this.sex,
    required this.constellation,
    required this.avatar,
  });

  static List<MockHistoryMatch> get() {
    for (var i = 0; i < 12; i++) {
      _data.add(MockHistoryMatch(
        nickName: mock.cname(),
        age: mock.integer(min: 18, max: 45),
        sex: mock.pick(["Female", "Male", "Other"]),
        constellation: mock.pick([
          "Aries",
          "Taurus",
          "Gemini",
          "Cancer",
          "Leo",
          "Virgo",
          "Libra",
          "Scorpio",
          "Sagittarius",
          "Capricorn",
          "Aquarius",
          "Pisces",
        ]),
        avatar: WcaoUtils.getRandomImage(),
      ));
    }

    return _data;
  }

  static clean() {
    _data.clear();
  }
}
