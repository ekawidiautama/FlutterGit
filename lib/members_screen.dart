import 'package:flutter/material.dart';

class Member {
  final String name;
  final String expiryDate;

  Member(this.name, this.expiryDate);
}

class Members extends StatelessWidget {
  final List<Member> gymMembers = [
    Member('ekawidiautama', '30 Mei 2024'),
    // Tambahkan anggota lain sesuai kebutuhan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Member'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: gymMembers.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              elevation: 4,
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                contentPadding: EdgeInsets.all(16),
                title: Text(
                  gymMembers[index].name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Masa Berlaku: ${gymMembers[index].expiryDate}',
                  style: TextStyle(fontSize: 14),
                ),
                onTap: () { 
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
