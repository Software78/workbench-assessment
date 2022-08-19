import 'package:assessment/models/location_model.dart';
import 'package:assessment/views/modal/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../bloc/location/location_bloc.dart';

class ModalScreen extends StatefulWidget {
  const ModalScreen({Key? key}) : super(key: key);

  @override
  State<ModalScreen> createState() => ModalController();
}

class ModalController extends State<ModalScreen> {
  addPoints() {
    context.read<LocationBloc>().add(const AddLocation());
  }

  deleteLocation(int id) {
    context.read<LocationBloc>().add(DeleteLocation(id: id));
  }

  fetchLocation(LocationModel model) {
    context.read<LocationBloc>().add(FetchLocation(id: model.id));
  }

  showSnackBar(String message) {
    Fluttertoast.showToast(
      msg: message,
      timeInSecForIosWeb: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ModalView(this);
  }
}
