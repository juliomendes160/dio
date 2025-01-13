# 1. Introdução ao Flutter

## 1.1 Introdução ao Flutter | Danilo Perez | Curso

## 1.2 Ambiente de Desenvolvimento Flutter | Danilo Perez | Curso

[https://flutter.dev](https://flutter.dev/?gad_source=1&gclid=Cj0KCQiAvbm7BhC5ARIsAFjwNHsK3N41MotleC9zH1Y20RRbLPHmNShbkrOtcCygdb5xrGr9hJli1UUaAr3CEALw_wcB&gclsrc=aw.ds)

[flutter_windows_3.0.5-stable.zip](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_3.0.5-stable.zip)

[https://developer.android.com](https://developer.android.com/studio?gad_source=1&gclid=Cj0KCQiAvbm7BhC5ARIsAFjwNHs7ZYolynvJBfsuBcCWWfx4EPk27eGK2ainygVonOBTgo9mhHXsCKIaAmcMEALw_wcB&gclsrc=aw.ds&hl=pt-br)

[android-studio-2021.2.1.15-windows.exe](https://redirector.gvt1.com/edgedl/android/studio/install/2021.2.1.15/android-studio-2021.2.1.15-windows.exe)

```
Nome: Flutter
ID: Dart-Code.flutter
Descrição: Flutter support and debugger for Visual Studio Code.
Versão: 3.44.0
Editor: Dart Code
Link do Marketplace do VS: https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter
```

```
Nome: Dart
ID: Dart-Code.dart-code
Descrição: Dart language support and debugger for Visual Studio Code.
Versão: 3.44.0
Editor: Dart Code
Link do Marketplace do VS: https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code
```

## 1.3 Criando Meu Primeiro Projeto em Flutter | Danilo Perez | Curso

```
flutter create -t app --org com.daniloperez.dioapp -a kotlin -i swift dioproject
cd dioproject
flutter run
```

## 1.4 Subindo o Seu Projeto Flutter no GitHub

```
flutter create -t app --org com.daniloperez.dioapp -a kotlin -i swift meuapp
```

# 2. Linguagem de Programação Dart

## 2.1 Fundamentos da Linguagem Dart

[https://dart.dev](https://dart.dev/)

[https://dartpad.dev](https://dartpad.dev/)

```
dart create -t console meu_app
cd meu_ap
dart run
```

```json D:\GitHub\dio\.vscode\launch.json
{
    // Use o IntelliSense para saber mais sobre os atributos possíveis.
    // Focalizar para exibir as descrições dos atributos existentes.
    // Para obter mais informações, acesse: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "name": "meu_app",
            "cwd": "meu_app",
            "request": "launch",
            "type": "dart",
            "program": "bin/meu_app.dart",
            "args": ["arg1","arg2"],
            "env": {"key1": "value1", "key2": "value1"}
        }
    ]
}
```

```dart D:\GitHub\dio\meu_app\bin\meu_app.dart

import 'dart:io';

import 'package:meu_app/meu_app.dart' as meu_app;

void main(List<String> arguments) {
    print('Hello world: ${meu_app.calculate()}!');

    String? arg1 = arguments[0];
    String? arg2 = arguments[1];
    print('ARG1: $arg1');
    print('ARG1: $arg2');

    String? key1 = Platform.environment['KEY1'];
    String? key2 = Platform.environment['KEY2'];
    print('KEY1: $key1');
    print('KEY2: $key2');
}
```

## 2.2 Estruturas Condicionais e de Repetição em Dart

```
cd meu_app
dart run
```
