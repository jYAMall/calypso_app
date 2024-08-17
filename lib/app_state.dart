import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _codesValue = [];
  List<int> get codesValue => _codesValue;
  set codesValue(List<int> value) {
    _codesValue = value;
  }

  void addToCodesValue(int value) {
    codesValue.add(value);
  }

  void removeFromCodesValue(int value) {
    codesValue.remove(value);
  }

  void removeAtIndexFromCodesValue(int index) {
    codesValue.removeAt(index);
  }

  void updateCodesValueAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    codesValue[index] = updateFn(_codesValue[index]);
  }

  void insertAtIndexInCodesValue(int index, int value) {
    codesValue.insert(index, value);
  }

  int _totalValue = 0;
  int get totalValue => _totalValue;
  set totalValue(int value) {
    _totalValue = value;
  }

  DocumentReference? _codeDatails;
  DocumentReference? get codeDatails => _codeDatails;
  set codeDatails(DocumentReference? value) {
    _codeDatails = value;
  }
}
