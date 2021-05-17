import 'package:flutter/material.dart';
import 'package:flutter_auth/User_Interface/components/test_classes.dart';
import 'package:intl/intl.dart';
import '../../constants.dart';

class BuildClasses extends StatelessWidget {
  final DateFormat dateFormat = DateFormat("hh:mm a");
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: classes.length,
      itemBuilder: (BuildContext context, int index) {
        Classes c = classes[index];
        _getStatus(c);
        return Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "${dateFormat.format(c.time)}",
                  style: TextStyle(
                    color: c.isPassed
                        ? Colors.white.withOpacity(0.2)
                        : Colors.white,
                    fontSize: 15.0,
                  ),
                ),
                SizedBox(width: 42.0),
                _getTime(c, context),
                SizedBox(width: 15.0),
                Text(
                  c.subject,
                  style: TextStyle(
                    color: c.isPassed
                        ? Colors.yellow.withOpacity(0.4)
                        : Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                // SizedBox(width: 30.0),
                // c.isHappening
                //     ? Container(
                //         height: 25.0,
                //         width: 40.0,
                //         decoration: BoxDecoration(
                //           color: Theme.of(context).accentColor,
                //           borderRadius: BorderRadius.circular(5.0),
                //         ),
                //       )
                //     : Container(),
              ],
            ),
            SizedBox(height: 12.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 90.0, bottom: 50.0),
                  width: 0.4,
                  height: 80.0,
                  color: c.isPassed ? kTextColor.withOpacity(0.6) : kTextColor,
                ),
                SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          color: c.isPassed
                              ? Theme.of(context).accentColor.withOpacity(0.3)
                              : Theme.of(context).accentColor,
                          size: 20.0,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          c.type,
                          style: TextStyle(
                            color: c.isPassed
                                ? kTextColor.withOpacity(0.3)
                                : kTextColor,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.person,
                          color: c.isPassed
                              ? Theme.of(context).accentColor.withOpacity(0.3)
                              : Theme.of(context).accentColor,
                          size: 20.0,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          c.teacherName,
                          style: TextStyle(
                            color: c.isPassed
                                ? kTextColor.withOpacity(0.3)
                                : kTextColor,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  _getStatus(Classes c) {
    DateTime now = DateTime.now();
    DateTime finishedTime = c.time.add(Duration(hours: 1));

    if (now.difference(c.time).inMinutes >= 59) {
      c.isPassed = true;
    } else if (now.difference(c.time).inMinutes <= 59 &&
        now.difference(finishedTime).inMinutes >= -59) {
      c.isHappening = true;
    }
  }

  _getTime(Classes c, context) {
    return Container(
      height: 20.0,
      width: 20.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: c.isPassed
              ? Theme.of(context).accentColor.withOpacity(0.5)
              : Theme.of(context).accentColor,
          // width: 2.0,
        ),
      ),
      child: _getChild(c, context),
    );
  }

  _getChild(Classes c, context) {
    if (c.isPassed) {
      return Icon(
        Icons.check,
        color: c.isPassed
            ? Theme.of(context).accentColor.withOpacity(0.6)
            : Theme.of(context).accentColor,
        size: 16.0,
      );
    } else if (c.isHappening) {
      return Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
      );
    }
  }
}
