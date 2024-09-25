import 'package:flutter/material.dart';
import '../models/person.dart';

class ResultScreen extends StatefulWidget {
  final List<Person> people;

  ResultScreen({required this.people});

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  void _removePerson(int index) {
    setState(() {
      widget.people.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil Inputan'),
      ),
      body: ListView.builder(
        itemCount: widget.people.length,
        itemBuilder: (context, index) {
          final person = widget.people[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(person.name),
              subtitle: Text(person.email),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text(person.name),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Email: ${person.email}'),
                        Text('Alamat: ${person.address}'),
                        Text('No. HP: ${person.phoneNumber}'),
                        Text('Tanggal Lahir: ${person.birthDate}'),
                        Text('Jenis Kelamin: ${person.gender}'),
                        Text('Pekerjaan: ${person.job}'),
                      ],
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('Tutup'),
                      ),
                      TextButton(
                        onPressed: () {
                          _removePerson(index);
                          Navigator.pop(context);
                        },
                        child: Text('Hapus'),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
