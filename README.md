# Formação Flutter Specialist

## Introdução ao Flutter

### Introdução ao Flutter | Danilo Perez | Curso

1.1 Introdução ao Flutter

https://github.com/digitalinnovationone/dio-flutter

### Ambiente de Desenvolvimento Flutter | Danilo Perez | Curso

1.1 Ambiente de Desenvolvimento

https://flutter.dev/?gad_source=1&gclid=CjwKCAiAzvC9BhADEiwAEhtlN4VvMktgorvCG0gLmD99q4NeLJUXVOku6F05rTHd0tKLyeEosq3MgxoCnRIQAvD_BwE&gclsrc=aw.ds

https://developer.android.com/studio?gad_source=1&gclid=Cj0KCQiA8fW9BhC8ARIsACwHqYoPgj0MX-OWXgvJyUbwyEYDGimLNGpiGKdDrnTMscy0uWaJC0SNhqcaAv5aEALw_wcB&gclsrc=aw.ds&hl=pt-br

```bash
mkdir -p "\dev\flutter\3.0.5\flutter"
curl -L https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.0.5-stable.zip -o "\dev\flutter\3.0.5\flutter.zip" --ssl-no-revoke
unzip "\dev\flutter\3.0.5\flutter.zip" -d "\dev\flutter\3.0.5"

flutter doctor

mkdir -p "\dev\android\2021.2.1.15\android"
curl -L "https://redirector.gvt1.com/edgedl/android/studio/install/2021.2.1.15/android-studio-2021.2.1.15-windows.exe" -o "\dev\android\2021.2.1.15\android.exe" --ssl-no-revoke
start "\dev\android\2021.2.1.15\android.exe"

code --install-extension Dart-Code.flutter@3.44.0
code --install-extension Dart-Code.dart-code@3.44.0
```

### Criando Meu Primeiro Projeto em Flutter | Danilo Perez | Curso

1.1 Criando Meu Primeiro Projeto em Flutter

```bash
flutter create -t app --org com.daniloperez.dioapp -a kotlin -i swift dioproject
cd dioproject
flutter run
```
