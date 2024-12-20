/*import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'telaConfirm.dart'; // Certifique-se de importar o arquivo correto da TelaConfirm

import 'package:mysql_client/mysql_client.dart';
import 'package:http/http.dart' as http;


/*final conn = await MySQLConnection.createConnection(
      host: "192.168.100.7", // Add your host IP address or server name
      port: 3309, // Add the port the server is running on
      userName: "root", // Your username
      password: "root", // Your password
      databaseName: "test", // Your DataBase name
    );*/

class TelaAgendamentoWidget extends StatefulWidget {
  final String especialidade;

  const TelaAgendamentoWidget({super.key, required this.especialidade});

  @override
  _TelaAgendamentoWidgetState createState() => _TelaAgendamentoWidgetState();
}

class _TelaAgendamentoWidgetState extends State<TelaAgendamentoWidget> {
  DateTime _selectedDay = DateTime.now();
  TimeOfDay? _selectedTime;
  List<String> _availableTimes = [];
  String? _selectedHour;

  List<String> _profissionais = ['Dr. Silva', 'Dra. Fernanda', 'Dr. Costa'];
  String? _profissionalSelecionado;

  // Função para gerar os horários disponíveis para o dia selecionado
  void _getAvailableTimes() {
    _availableTimes = List.generate(10, (index) {
      final hour = 8 + index; // Horários de 8h até 17h
      return '${hour.toString().padLeft(2, '0')}:00';
    });
  }

  @override
  void initState() {
    super.initState();
    _getAvailableTimes(); // Carregar os horários inicialmente
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFC62828), // Cor do cabeçalho (vermelho)
        title: Text(
          'Agendamento para ${widget.especialidade}',
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevation: 0, // Retira a sombra do cabeçalho
      ),
      body: SingleChildScrollView(
        // Adiciona rolagem para telas menores
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Exibição do calendário por semana
            TableCalendar(
              focusedDay: _selectedDay,
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _getAvailableTimes(); // Atualiza os horários disponíveis
                });
              },
              calendarFormat: CalendarFormat.week,
              headerStyle: const HeaderStyle(formatButtonVisible: false),
            ),
            const SizedBox(height: 20),

            // Dropdown para selecionar o profissional
            DropdownButton<String>(
              value: _profissionalSelecionado,
              hint: const Text('Selecione o profissional'),
              items: _profissionais.map((String profissional) {
                return DropdownMenuItem<String>(
                  value: profissional,
                  child: Text(profissional),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _profissionalSelecionado = newValue;
                });
              },
            ),
            const SizedBox(height: 20),

            // Exibir os horários disponíveis
            Text(
              'Horários disponíveis para ${DateFormat('dd/MM/yyyy').format(_selectedDay)}:',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),

            // Exibe os horários disponíveis em Grid
            _availableTimes.isEmpty
                ? const CircularProgressIndicator()
                : GridView.builder(
                    shrinkWrap: true, // Evita o problema de overflow
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 2,
                    ),
                    itemCount: _availableTimes.length,
                    itemBuilder: (context, index) {
                      final time = _availableTimes[index];
                      final isSelected = _selectedHour == time;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedHour = time;
                            _selectedTime = TimeOfDay(
                              hour: 8 + index,
                              minute: 0,
                            );
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Colors.white
                                : const Color(0xFFC62828),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: isSelected
                                  ? const Color(0xFFC62828)
                                  : Colors.white,
                              width: 2,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            time,
                            style: TextStyle(
                              color: isSelected
                                  ? const Color(0xFFC62828)
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
            const SizedBox(height: 30),

            // Botão de confirmação
            Center(
              child: ElevatedButton(
                onPressed:
                    _selectedTime != null && _profissionalSelecionado != null
                        ? () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => TelaConfirmacaoWidget(
                                  especialidade: widget.especialidade,
                                  dataSelecionada: _selectedDay,
                                  horarioSelecionado: _selectedTime!,
                                  profissional: _profissionalSelecionado!,
                                ),
                              ),
                            );
                          }
                        : null,
                child: const Text('Confirmar Agendamento'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFFC62828),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mysql_client/mysql_client.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:http/http.dart' as http;

class TelaAgendamentoWidget extends StatefulWidget {
  final String especialidade;

  const TelaAgendamentoWidget({super.key, required this.especialidade});

  @override
  _TelaAgendamentoWidgetState createState() => _TelaAgendamentoWidgetState();
}

class _TelaAgendamentoWidgetState extends State<TelaAgendamentoWidget> {
  DateTime _selectedDay = DateTime.now();
  TimeOfDay? _selectedTime;
  List<String> _availableTimes = [];
  String? _selectedHour;

  List<String> _profissionais = ['Dr. Silva', 'Dra. Fernanda', 'Dr. Costa'];
  String? _profissionalSelecionado;

  // Função para gerar os horários disponíveis para o dia selecionado
  void _getAvailableTimes() {
    _availableTimes = List.generate(10, (index) {
      final hour = 8 + index; // Horários de 8h até 17h
      return '${hour.toString().padLeft(2, '0')}:00';
    });
  }

  @override
  void initState() {
    super.initState();
    _getAvailableTimes(); // Carregar os horários inicialmente
  }

  // Função para enviar os dados do agendamento ao servidor
  Future<void> _sendAppointmentToServer(String nome, DateTime dataHora) async {
    final url = Uri.parse('http://localhost:3000/agendar');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({
        'nome': nome,
        'dataHora': DateFormat('yyyy-MM-dd HH:mm:ss').format(dataHora),
        'profissional': _profissionalSelecionado,
        'especialidade': widget.especialidade,
      }),
    );

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Agendamento realizado com sucesso!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao agendar: ${response.body}')),
      );
    }

    final conn = await MySQLConnection.createConnection(
      host: "127.0.0.1", // Add your host IP address or server name
      port: 3306, // Add the port the server is running on
      userName: "root", // Your username
      password: "123@Mudar", // Your password
      databaseName: "clinica", // Your DataBase name
    );

    conn.connect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFC62828), // Cor do cabeçalho (vermelho)
        title: Text(
          'Agendamento para ${widget.especialidade}',
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        elevation: 0, // Retira a sombra do cabeçalho
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TableCalendar(
              focusedDay: _selectedDay,
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _getAvailableTimes(); // Atualiza os horários disponíveis
                });
              },
              calendarFormat: CalendarFormat.week,
              headerStyle: const HeaderStyle(formatButtonVisible: false),
            ),
            const SizedBox(height: 20),
            DropdownButton<String>(
              value: _profissionalSelecionado,
              hint: const Text('Selecione o profissional'),
              items: _profissionais.map((String profissional) {
                return DropdownMenuItem<String>(
                  value: profissional,
                  child: Text(profissional),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _profissionalSelecionado = newValue;
                });
              },
            ),
            const SizedBox(height: 20),
            Text(
              'Horários disponíveis para ${DateFormat('dd/MM/yyyy').format(_selectedDay)}:',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            _availableTimes.isEmpty
                ? const CircularProgressIndicator()
                : GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      childAspectRatio: 2,
                    ),
                    itemCount: _availableTimes.length,
                    itemBuilder: (context, index) {
                      final time = _availableTimes[index];
                      final isSelected = _selectedHour == time;

                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedHour = time;
                            _selectedTime = TimeOfDay(hour: 8 + index, minute: 0);
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Colors.white
                                : const Color(0xFFC62828),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: isSelected
                                  ? const Color(0xFFC62828)
                                  : Colors.white,
                              width: 2,
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            time,
                            style: TextStyle(
                              color: isSelected
                                  ? const Color(0xFFC62828)
                                  : Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: _selectedTime != null && _profissionalSelecionado != null
                    ? () {
                        _sendAppointmentToServer(
                          'Nome do Paciente', // Coloque o nome do paciente aqui
                          DateTime(_selectedDay.year, _selectedDay.month, _selectedDay.day, _selectedTime!.hour, _selectedTime!.minute),
                        );
                      }
                    : null,
                child: const Text('Confirmar Agendamento'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFFC62828),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

