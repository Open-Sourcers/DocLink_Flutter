import 'package:doc_link_project/core/app/cubit/app_lang_change_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppLangChangeCubit extends Cubit<AppLangChangeStates> {
  AppLangChangeCubit() : super(LangChangeState(isEnglish: true));

  bool isEnglish = true;

  langChange({required bool? sharedLang}) {
    isEnglish = sharedLang ?? false;
    emit(LangChangeState(isEnglish: isEnglish));
  }
}
