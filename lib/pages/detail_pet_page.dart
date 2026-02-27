import 'package:flutter/material.dart';
import '../models/pet.dart';
import 'edit_pet_page.dart';

class DetailPetPage extends StatelessWidget {
  final Pet pet;
  final int index;

  const DetailPetPage({
    super.key,
    required this.pet,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Data"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Informasi Penitipan",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),

                _item("Nama Hewan", pet.namaHewan),
                _item("Jenis Hewan", pet.jenis),
                _item("Pemilik", pet.pemilik),
                _item("No HP", pet.noHp.isEmpty ? "-" : pet.noHp),
                _item("Tanggal Masuk", _fmt(pet.tanggalMasuk)),
                _item("Tanggal Ambil", _fmt(pet.tanggalAmbil)),
                _item("Status", pet.status),

                const Spacer(),

                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        icon: const Icon(Icons.delete),
                        label: const Text("Hapus"),
                        onPressed: () {
                          Navigator.pop(context, {
                            "action": "delete",
                          });
                        },
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: FilledButton.icon(
                        icon: const Icon(Icons.edit),
                        label: const Text("Edit"),
                        onPressed: () async {
                          final updated = await Navigator.push<Pet>(
                            context,
                            MaterialPageRoute(
                              builder: (_) => EditPetPage(pet: pet),
                            ),
                          );

                          if (updated != null) {
                            Navigator.pop(context, {
                              "action": "update",
                              "data": updated,
                            });
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _item(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        "$title : $value",
        style: const TextStyle(fontSize: 15),
      ),
    );
  }

  String _fmt(DateTime d) =>
      '${d.day.toString().padLeft(2, '0')}-${d.month.toString().padLeft(2, '0')}-${d.year}';
}