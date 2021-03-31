import 'package:flutter/material.dart';
import 'package:medical_ui/constant.dart';
import 'package:medical_ui/model/slot_time_group.dart';
import 'package:medical_ui/widgets/my_header.dart';

class ReversePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      MyHeader(
          height: 260,
          imageUrl: 'assets/images/avatar_head.png',
          child: Column(
            children: [MyAppBar(), SizedBox(height: 15), UserInfo()],
          )),
      Expanded(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [mBackgroundColor, mSecondBackgroundColor],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SlotTitle(
                    title: 'Choose Your Slot',
                  ),
                  SizedBox(height: 20),
                  ChooseSlot(),
                  SizedBox(height: 30),
                  SlotTimeGroup(
                    title: 'Morning',
                    times: [
                      SlotTimeModel('09.00 AM'),
                      SlotTimeModel('09.30 AM', check: true),
                      SlotTimeModel('10.30 AM'),
                      SlotTimeModel('11.00 AM'),
                      SlotTimeModel('11.30 AM'),
                      SlotTimeModel('12.00 AM'),
                    ],
                  ),
                  SizedBox(height: 30),
                  SlotTimeGroup(
                    title: 'Afternoon',
                    times: [
                      SlotTimeModel('02.00 PM'),
                      SlotTimeModel(
                        '02.30 PM',
                      ),
                      SlotTimeModel('03.30 PM'),
                      SlotTimeModel('03.30 PM')
                    ],
                  ),
                  SizedBox(height: 30),
                  SlotTimeGroup(
                    title: 'Evening',
                    times: [
                      SlotTimeModel('06.00 PM'),
                      SlotTimeModel('06.30 PM'),
                      SlotTimeModel('07.00 PM'),
                      SlotTimeModel('07.30 PM'),
                      SlotTimeModel('08.00 PM'),
                      SlotTimeModel('08.30 PM'),
                    ],
                  ),
                ],
              )))
    ]));
  }
}

class SlotTimeGroup extends StatelessWidget {
  final String title;
  final List<SlotTimeModel> times;
  const SlotTimeGroup({
    Key key,
    this.title,
    this.times,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlotTitle(title: 'Monring'),
        SizedBox(height: 20),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: _slotCells(),
        )
      ],
    );
  }

  List<Widget> _slotCells() {
    List<Widget> list = [];
    for (var item in times) {
      list.add(SlotTimeCell(
        time: item.time,
        check: item.check,
      ));
    }
    return list;
  }
}

class SlotTimeCell extends StatelessWidget {
  final String time;
  final bool check;
  const SlotTimeCell({
    Key key,
    this.time,
    this.check = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 11, vertical: 6),
      decoration: BoxDecoration(
          color: check ? mYellowColor : Colors.transparent,
          border: check
              ? null
              : Border.all(
                  color: check ? mYellowColor : mTitleTextColor, width: 0.5),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        time,
        style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w300,
            color: check ? Colors.white : mTitleTextColor),
      ),
    );
  }
}

class ChooseSlot extends StatelessWidget {
  const ChooseSlot({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Slot(
          week: 'Mon',
          date: '26',
        ),
        Slot(
          week: 'Tue',
          date: '27',
          selected: true,
        ),
        Slot(
          week: 'Wed',
          date: '28',
        ),
        Slot(
          week: 'Thu',
          date: '29',
        ),
        Slot(
          week: 'Fri',
          date: '30',
        ),
        Slot(
          week: 'Sat',
          date: '31',
        ),
      ],
    );
  }
}

class SlotTitle extends StatelessWidget {
  final String title;
  const SlotTitle({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: 18, fontWeight: FontWeight.bold, color: mTitleTextColor),
    );
  }
}

class Slot extends StatelessWidget {
  final String week;
  final String date;
  final bool selected;
  const Slot({
    Key key,
    this.week,
    this.date,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          week,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
              color: mTitleTextColor),
        ),
        SizedBox(height: 8),
        Container(
          height: 48,
          width: 48,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: selected ? mYellowColor : Colors.transparent,
              border: selected
                  ? null
                  : Border.all(
                      color: mTitleTextColor,
                      width: 0.5,
                    ),
              borderRadius: BorderRadius.circular(24)),
          child: Text(
            date,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: selected ? Colors.white : mTitleTextColor),
          ),
        )
      ],
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Image(
            image: AssetImage('assets/images/avatar.png'),
            width: 110,
            height: 110,
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'dr.John Doe',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: mButtonColor),
              ),
              SizedBox(height: 5),
              Text(
                'Pulmonologist',
                style: TextStyle(fontSize: 13),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Icon(Icons.arrow_back_ios, size: 26),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Icon(
                  Icons.menu,
                  size: 36,
                  color: mSecondBackgroundColor,
                )
              ],
            )));
  }
}
