import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/features/orders/presentation/manager/cubit/orders_cubit.dart';
import 'package:wassel/features/orders/presentation/views/widgets/orders_app_bar.dart';
import 'package:wassel/features/orders/presentation/views/widgets/orders_view_body.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OrdersCubit()..fetchOrders(),
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey.shade50,
          appBar: OrdersAppBar(),
          body: OrdersViewBody(),
        ),
      ),
    );
  }
}
