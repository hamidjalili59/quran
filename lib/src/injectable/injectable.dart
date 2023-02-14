import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:quran/src/injectable/injectable.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureInjection()=> $initGetIt(getIt);