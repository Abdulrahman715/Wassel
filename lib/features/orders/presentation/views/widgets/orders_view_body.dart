import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wassel/core/utils/loading_style.dart';
import 'package:wassel/features/orders/presentation/manager/cubit/orders_cubit.dart';
import 'package:wassel/features/orders/presentation/manager/cubit/orders_state.dart';
import 'package:wassel/features/orders/presentation/views/widgets/empty_orders_widget.dart';
import 'package:wassel/features/orders/presentation/views/widgets/orders_list_view.dart';

class OrdersViewBody extends StatelessWidget {
  const OrdersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrdersCubit, OrdersState>(
      builder: (context, state) {
        if (state is OrdersLoading) {
          return LoadingStyle();
        } else if (state is OrdersSuccess) {
          if (state.orders.isEmpty) {
            return const EmptyOrdersWidget();
          }
          return TabBarView(
            children: [
              OrdersListView(orders: state.orders, tabType: 'all'),
              OrdersListView(orders: state.orders, tabType: 'on_process'),
              OrdersListView(orders: state.orders, tabType: 'previous'),
            ],
          );
        } else if (state is OrdersFailure) {
          return Center(child: Text(state.errMessage));
        }
        return const SizedBox();
      },
    );
  }
}
