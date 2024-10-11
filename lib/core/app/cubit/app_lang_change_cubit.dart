import 'package:doc_link_project/core/app/cubit/app_lang_change_states.dart';
import 'package:doc_link_project/core/databases/cache/cache_helper.dart';
import 'package:doc_link_project/core/databases/cache/cached_key.dart';
import 'package:doc_link_project/core/services/services_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppLangChangeCubit extends Cubit<AppLangChangeStates> {
  AppLangChangeCubit() : super(LangChangeInitial());

  String currentLang = 'ar';

  //
  getCachedLanguage() {
    String? answer =
        getit.get<CacheHelper>().getString(CachedKey.currentLanguage);
    if (answer != null) {
      currentLang = answer;
    } else {
      currentLang = 'ar';
    }
  }

  _changeLanguage({required String lang}) {
    getit.get<CacheHelper>().setString(CachedKey.currentLanguage, lang);
    currentLang = lang;
    emit(LangChangeState());
  }

  toArabic() {
    _changeLanguage(lang: 'ar');
  }

  toEnglish() {
    _changeLanguage(lang: 'en');
  }
}
