import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';


class CounterScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context)=> CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates >(
        listener: (context, state) {
          if(state is CounterMinisState)
          {

          }
          if(state is CounterPlusState)
          {

          }

        },
        builder: (context , state){
          return  Scaffold(
            appBar: AppBar(
              title: Text(
                  'Counter'
              ),
            ),
            body:
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){
                    CounterCubit.get(context).minis();
                  }, child: Text
                    (
                      'Minus'
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric( horizontal: 20.0),
                    child: Text(
                      '${CounterCubit.get(context).counter}',
                      style: TextStyle(
                        fontSize: 50.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  TextButton(onPressed: (){
                    CounterCubit.get(context).plus();

                  }, child:
                  Text(
                      'Plus'
                  ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}