import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TelaAgendamentosWidget extends StatefulWidget {
  const TelaAgendamentosWidget({Key? key}) : super(key: key);

  @override
  _TelaAgendamentosWidgetState createState() => _TelaAgendamentosWidgetState();
}

class _TelaAgendamentosWidgetState extends State<TelaAgendamentosWidget> {
  List<dynamic> _agendamentos = [];

  // Função para buscar os agendamentos do backend
  Future<void> _getAgendamentos() async {
    final url = Uri.parse('http://localhost:3000/agendamentos');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      setState(() {
        _agendamentos = json.decode(response.body); // Converte a resposta JSON para lista
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao carregar agendamentos: ${response.body}')),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    _getAgendamentos(); // Carregar agendamentos ao inicializar a tela
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFC62828),
        title: const Text(
          'Agendamentos',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 0,
      ),
      body: _agendamentos.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: _agendamentos.length,
              itemBuilder: (context, index) {
                final agendamento = _agendamentos[index];
                final nome = agendamento['nome'];
                final dataHora = DateTime.parse(agendamento['dataHora']);
                final profissional = agendamento['profissional'];
                final especialidade = agendamento['especialidade'];

                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    title: Text('$nome - ${profissional}'),
                    subtitle: Text(
                        'Data: ${dataHora.toLocal()} \nEspecialidade: $especialidade'),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      // Ao tocar, você pode mostrar mais detalhes ou realizar outra ação
                    },
                  ),
                );
              },
            ),
    );
  }
}
