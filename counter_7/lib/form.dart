import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';
import 'package:counter_7/budget.dart';
import 'package:intl/intl.dart';

class BudgetFormPage extends StatefulWidget {
  const BudgetFormPage({super.key});

  @override
  State<BudgetFormPage> createState() => _BudgetFormPageState();
}

class _BudgetFormPageState extends State<BudgetFormPage> {

  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int _nominal = 0;
  String _jenis = 'Pemasukan';
  DateTime _tanggal = DateTime.now();

  final _controllerJudul = TextEditingController();
  final _controllerNominal = TextEditingController();

  void clearText() {
    _judul = '';
    _nominal = 0;
  }

  bool isNumeric(String value){
    return int.tryParse(value) != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Budget'),
      ),
      drawer: buildDrawer(context),
      // Form
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh: Makan Sushi",
                      labelText: "Judul Budget",
                      icon: const Icon(Icons.title),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    onSaved: (String? value) {
                      setState(() {
                        _judul = value!;
                      });
                    },
                    // Validator
                    validator: (String? value) {
                      if (value == null || value.isEmpty) {
                        return 'Judul budget tidak boleh kosong!';
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh: 5000",
                      labelText: "Nominal Budget",
                      icon: const Icon(Icons.attach_money),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),

                    keyboardType: TextInputType.number,

                    onChanged: (String? value) {
                      setState(() {
                        _nominal = int.parse(value!);
                      });
                    },
                    // Menambahkan behavior saat data disimpan
                    onSaved: (String? value) {
                      setState(() {
                        _nominal = value! as int;
                      });
                    },
                    // Validator
                    validator: (String? value) {

                      // cek kosong
                      if (value == null || value.isEmpty) {
                        return 'Nominal budget tidak boleh kosong!';
                      }

                      // check isnumeric
                      if (!isNumeric(value)) {
                        return 'Nominal budget harus berupa angka!';
                      }
                      return null;
                    },
                  ),
                ),


                // Buat Dropdown
                ListTile(
                  leading: const Icon(Icons.class_),
                  title: const Text(
                    'Jenis Budget: ',
                  ),
                  trailing: DropdownButton(
                    value: _jenis,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: const <DropdownMenuItem<String>>[
                      DropdownMenuItem<String>(
                        value: 'Pengeluaran',
                        child: Text('Pengeluaran'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Pemasukan',
                        child: Text('Pemasukan'),
                      ),
                    ],
                    onChanged: (String? newValue) {
                      setState(() {
                        _jenis = newValue!;
                      });
                    },
                  ),
                ),

                // Buat Date
                Padding(
                  padding: const EdgeInsets.only(top:100.0),
                  child: ElevatedButton(
                    child: const Text("Tanggal", style: TextStyle(fontSize: 15)),
      
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2099),

                      ).then((date) {  // setState async untuk tanggal
                        setState(() {
                          _tanggal = date!;
                        });
                      });
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top:20, bottom: 20),
                  child: Text(DateFormat('d-MMMM-yyy').format(_tanggal), style: const TextStyle(fontSize: 15)),
                ),

                // submit button
                TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      addBudget(_judul, _nominal, _jenis, _tanggal);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const BudgetFormPage()),
                      );
                      clearText();
                    }
                  },
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
