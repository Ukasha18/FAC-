import 'package:flutter/material.dart';

class ShiftsPage extends StatefulWidget {
  @override
  _ShiftsPageState createState() => _ShiftsPageState();
}

class _ShiftsPageState extends State<ShiftsPage> {
  List<ShiftItem> _shiftItems = [
    ShiftItem(
      startTime: '8:00 AM',
      endTime: '4:00 PM',
      position: 'Sales Associate',
    ),
    ShiftItem(
      startTime: '12:00 PM',
      endTime: '8:00 PM',
      position: 'Cashier',
    ),
    ShiftItem(
      startTime: '9:00 AM',
      endTime: '5:00 PM',
      position: 'Manager',
    ),
  ];


  void _addShiftItem() {
    setState(() {
      _shiftItems.add(
        ShiftItem(startTime: '', endTime: '', position: ''),
      );
    });
  }

  void _removeShiftItem(int index) {
    setState(() {
      _shiftItems.removeAt(index);
    });
  }

  void _submitShifts() {
    // Implement the logic for submitting shifts here
    // For example, you could print out the current shift items
    print(_shiftItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Shifts'),
      ),
      body: ListView.builder(
        itemCount: _shiftItems.length,
        itemBuilder: (context, index) {
          return _buildShiftItem(index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: _addShiftItem,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                onPressed: _submitShifts,
                child: Text('Submit'),
              ),

            ),

          ],
        ),
      ),
    );

  }

  Widget _buildShiftItem(int index) {
    return ListTile(
      leading: Text(
        '${_shiftItems[index].startTime} - ${_shiftItems[index].endTime}',
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
      title: TextFormField(
        initialValue: _shiftItems[index].position,
        decoration: InputDecoration(
          hintText: 'Position',
        ),
        onChanged: (value) {
          setState(() {
            _shiftItems[index].position = value;
          });
        },
      ),
      trailing: IconButton(
        icon: Icon(Icons.remove),
        onPressed: () {
          _removeShiftItem(index);
        },
      ),
    );
  }
}

class ShiftItem {
  String startTime;
  String endTime;
  String position;

  ShiftItem({
    this.startTime,
    this.endTime,
    this.position,
  });
}
