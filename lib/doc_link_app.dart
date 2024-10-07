import 'package:doc_link_project/core/app/cubit/app_lang_change_cubit.dart';
import 'package:doc_link_project/core/app/cubit/app_lang_change_states.dart';
import 'package:doc_link_project/core/utils/app_router.dart';
import 'package:doc_link_project/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocLinkApp extends StatelessWidget {
  const DocLinkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              AppLangChangeCubit()..langChange(sharedLang: true),
        ),
      ],
      child: BlocBuilder<AppLangChangeCubit, AppLangChangeStates>(
        builder: (context, state) {
          final langCubit = BlocProvider.of<AppLangChangeCubit>(context);
          return ScreenUtilInit(
            child: MaterialApp.router(
              routerConfig: AppRouter.router,
              locale:
                  langCubit.isEnglish ? const Locale('en') : const Locale('ar'),
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                scaffoldBackgroundColor:
                    const Color.fromARGB(235, 255, 255, 255),
              ),
            ),
          );
        },
      ),
    );
  }
}
