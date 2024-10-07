abstract class AppLangChangeStates {}

class LangChangeState extends AppLangChangeStates {
  final bool isEnglish;
  LangChangeState({required this.isEnglish});
}
