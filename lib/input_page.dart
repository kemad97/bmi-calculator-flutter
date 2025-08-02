import 'package:flutter/material.dart';
import 'package:bmi_calculator/AppColors.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(AppColors.card)),
                Expanded(child: ReusableCard(AppColors.card)),
              ],
            ),
          ),
          Expanded(child: ReusableCard(AppColors.card)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(AppColors.card)),
                Expanded(child: ReusableCard(AppColors.card)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color color;
  const ReusableCard(this.color, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color, // ✅ use the passed color instead of hardcoded
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(16.0),
    );
  }
}
