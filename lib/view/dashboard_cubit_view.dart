import 'package:class_assignment2/cubit/dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Aryan Ghimire ClassAssignment2',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        elevation: 5,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple.shade100, Colors.pink.shade200],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: 3,
          itemBuilder: (context, index) {
            final options = [
              {
                'title': 'Circle Area Cubit',
                'icon': Icons.bubble_chart,
                'onTap': () {
                  context
                      .read<DashboardCubit>()
                      .openCircleAreaCubitView(context);
                },
              },
              {
                'title': 'Arithmetic Cubit',
                'icon': Icons.functions,
                'onTap': () {
                  context.read<DashboardCubit>().openArithmeticView(context);
                },
              },
              {
                'title': 'Simple Interest Cubit',
                'icon': Icons.attach_money,
                'onTap': () {
                  context
                      .read<DashboardCubit>()
                      .openSimpleIntrestCubitView(context);
                },
              },
            ];

            return GestureDetector(
              onTap: options[index]['onTap'] as VoidCallback,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      options[index]['icon'] as IconData,
                      size: 60,
                      color: Colors.pink.shade700,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      options[index]['title'] as String,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple.shade800,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
