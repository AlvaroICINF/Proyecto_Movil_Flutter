import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proyecto_iddp/services/save.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  @override
  Widget build(BuildContext context) {
    TextEditingController rutController = TextEditingController(text: '');
    TextEditingController nameController = TextEditingController(text: '');
    TextEditingController lastNameController = TextEditingController(text: '');
    TextEditingController fieldController = TextEditingController(text: '');
    TextEditingController addressController = TextEditingController(text: '');
    TextEditingController birthController = TextEditingController(text: '');
    TextEditingController phoneNumberController = TextEditingController(text: '');
    TextEditingController memberController = TextEditingController(text: '');
    TextEditingController genderController = TextEditingController(text: '');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff29C4DB),
        title: Text(
          'Añadir miembros',
          style: GoogleFonts.roboto(
            textStyle: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [

            const Padding(
              padding:  EdgeInsets.only(left:25,right: 25,top: 25),
              child: Text('Rellena las celdas para ingresar un nuevo miembro a la base de datos de IDDP.',
              style: TextStyle(fontSize: 12,),textAlign: TextAlign.center,),
            ),
              
            // Rut
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 40, right: 20),
              child: SizedBox(
                width: 300,
                height: 55,
                child: TextField(
                  controller: rutController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.badge),
                    labelText: 'Rut',
                    labelStyle: const  TextStyle(color: Color(0xff29C4DB),fontWeight: FontWeight.w500),
                    hintText: 'Escriba el rut',
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Color(0xff86E6F4)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff86E6F4)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color(0xff86E6F4), width: 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),

            // Nombres
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              child: SizedBox(
                width: 300,
                height: 55,
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  labelText: 'Nombres',
                  labelStyle: const  TextStyle(color: Color(0xff29C4DB),fontWeight: FontWeight.w500),
                  hintText: 'Ingrese los Nombres',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Color(0xff86E6F4)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff86E6F4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xff86E6F4), width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ),

          // Apellidos
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
              child: SizedBox(
                width: 300,
                height: 55,
                child: TextField(
                  controller: lastNameController,
                  decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.people),
                  labelText: 'Apellidos',
                  labelStyle: const  TextStyle(color: Color(0xff29C4DB),fontWeight: FontWeight.w500),
                  hintText: 'Ingrese los apellidos',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Color(0xff86E6F4)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff86E6F4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xff86E6F4), width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ),

          // Local
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: LocalOptions(
              onLocalChanged: (local) {
                fieldController.text = local ?? '';
              },
            ),
          ),

          // Dirección
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: SizedBox(
              width: 300,
              height: 55,
              child: TextField(
                controller: addressController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.location_on),
                  labelText: 'Dirección',
                  labelStyle: const  TextStyle(color: Color(0xff29C4DB),fontWeight: FontWeight.w500),
                  hintText: 'Ingrese la dirección',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Color(0xff86E6F4)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff86E6F4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xff86E6F4), width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ),

           // Fecha de nacimiento
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: SizedBox(
              width: 300,
              height: 55,
              child: InkWell(
                onTap: () async {
                  DateTime? selectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                    locale: const Locale('es','ES')
                  );
                  if (selectedDate != null && selectedDate != DateTime.now()) {
                      String formattedDate = "${selectedDate.year}-${selectedDate.month.toString().padLeft(2, '0')}-${selectedDate.day.toString().padLeft(2, '0')}";
                      birthController.text = formattedDate;
                    }
                  },
            child: AbsorbPointer(
              child: TextField(
                controller: birthController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.calendar_today),
                  labelText: 'Fecha de nacimiento',
                  labelStyle: const TextStyle(color: Color(0xff29C4DB), fontWeight: FontWeight.w500),
                  hintText: 'Seleccione la fecha de nacimiento',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Color(0xff86E6F4)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff86E6F4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xff86E6F4), width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),

          // Número telefónico
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: SizedBox(
              width: 300,
              height: 55,
              child: TextField(
                controller: phoneNumberController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.phone),
                  labelText: 'Número telefónico',
                  labelStyle: const  TextStyle(color: Color(0xff29C4DB),fontWeight: FontWeight.w500),
                  hintText: 'Ingrese su número de teléfono',
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 1, color: Color(0xff86E6F4)),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff86E6F4)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xff86E6F4), width: 1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
            ),
          ),

          // Miembro
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: MemberOptions(
              onMemberChanged: (member) {
              memberController.text = member ?? '';
              },
            ),
          ),

          // Sexo
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
            child: GenderOptions(
              onGenderChanged: (gender) {
                  genderController.text = gender ?? '';
              },
            ),
          ),

          const SizedBox(height: 40),

          ElevatedButton(
                onPressed: () async {
                  await addIntegrante(
                    rutController.text,
                    nameController.text,
                    lastNameController.text,
                    fieldController.text,
                    addressController.text,
                    birthController.text,
                    phoneNumberController.text,
                    memberController.text,
                    genderController.text,
                  );
                },
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff29C4DB),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: const Text('Guardar datos',
            style: TextStyle(
              fontWeight: FontWeight.bold, 
              fontSize: 18, 
              color: Colors.white),
            ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//Creamos nuestra selección desplegable para los Locales
class LocalOptions extends StatefulWidget {
  final Function(String?) onLocalChanged;

  const LocalOptions({Key? key, required this.onLocalChanged}) : super(key: key);

  @override
  _LocalOptionsState createState() => _LocalOptionsState();
}

class _LocalOptionsState extends State<LocalOptions> {
  List<String> localOptions = [
    '--------------------',
    'Osorno',
    'Quemeumo',
    'Lafquelmapu',
    'Maicolpue',
    'Corral del sur',
    'Entre Lagos',
    'Pichilafquén',
    'El encanto',
    'Los juncos',
    'Aguas buenas',
    'San pablo',
    'otro',
  ];
  String selectedLocal = '--------------------';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 55,
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.church),
            labelText: 'Seleccione un local',
            labelStyle: const TextStyle(color: Color(0xff29C4DB), fontWeight: FontWeight.w500),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(width: 1, color: Color(0xff86E6F4)),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff86E6F4)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xff86E6F4), width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          value: selectedLocal,
          items: localOptions
              .map(
                (item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item, style: const TextStyle(fontSize: 13, color: Color.fromARGB(255, 116, 116, 116))),
                ),
              )
              .toList(),
          onChanged: (item) {
            setState(() {
              selectedLocal = item ?? 'Local 1';
            });
            widget.onLocalChanged(item);
          },
        ),
      ),
    );
  }
}

//Creamos nuestra selección desplegable para tipo de miembro
class MemberOptions extends StatefulWidget {
  final Function(String?) onMemberChanged;

  const MemberOptions({Key? key, required this.onMemberChanged}) : super(key: key);

  @override
  _MemberOptionsState createState() => _MemberOptionsState();
}

class _MemberOptionsState extends State<MemberOptions> {
  List<String> memberOptions = [
    '--------------------',
    'Adherente', 
    'Probando', 
    'Plena comunión'];
  String selectedMember = '--------------------';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 55,
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.group),
            labelText: 'Seleccione un tipo de miembro',
            labelStyle: const TextStyle(color: Color(0xff29C4DB), fontWeight: FontWeight.w500),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(width: 1, color: Color(0xff86E6F4)),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff86E6F4)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xff86E6F4), width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          value: selectedMember,
          items: memberOptions
              .map(
                (item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item, style: const TextStyle(fontSize: 13, color: Color.fromARGB(255, 116, 116, 116))),
                ),
              )
              .toList(),
          onChanged: (item) {
            setState(() {
              selectedMember = item ?? 'Adherente';
            });
            widget.onMemberChanged(item);
          },
        ),
      ),
    );
  }
}

//Creamos nuestra selección desplegable para los géneros
class GenderOptions extends StatefulWidget {
  final Function(String?) onGenderChanged;

  const GenderOptions({Key? key, required this.onGenderChanged}) : super(key: key);

  @override
  _GenderOptionsState createState() => _GenderOptionsState();
}

class _GenderOptionsState extends State<GenderOptions> {
  List<String> items = [ 
    '--------------------',
    'Masculino', 
    'Femenino'];
  String selectedItem = '--------------------';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 55,
        child: DropdownButtonFormField<String>(
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.male),
            labelText: 'Seleccione un género',
            labelStyle: const  TextStyle(color: Color(0xff29C4DB),fontWeight: FontWeight.w500),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(width: 1, color: Color(0xff86E6F4)),
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff86E6F4)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xff86E6F4), width: 1),
              borderRadius: BorderRadius.circular(15),
            ),
              
          ),
          value: selectedItem,
          items: items
              .map(
                (item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(item, style: const TextStyle(fontSize: 13, color: const Color.fromARGB(255, 116, 116, 116))),
                ),
              )
              .toList(),
          onChanged: (item) {
            setState(() {
              selectedItem = item ?? '';
            });
            widget.onGenderChanged(item);
          },
        ),
      ),
    );
  }
}
