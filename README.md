# flutter_sizefit

flutter_sizefit 是一个简单适配的框架

## 简单用例
#### 1.在 pubspec.yaml 中添加依赖
```
//pub方式
dependencies:
  flutter_sizefit: version

//导入方式
dependencies:
  flutter_sizefit:
    path: 项目路径

//git方式
dependencies:
  flutter_sizefit:
    git:
      url: git@github.com:JoanKing/flutter_sizefit.git
```

#### 2.在布局文件中添加 flutter_sizefit
```dart
import 'package:flutter_sizefit/flutter_sizefit.dart';

   // 添加方式，在任意位置初始化 JKSizeFit.initialze(), 建议放到 MaterialApp之前的build方法
   void main() {
      /// 初始化
      JKSizeFit.initialze();
      runApp(MyApp());
   }

   // 使用方式
   获取屏幕的宽高
   JKSizeFit.screenWidth
   JKSizeFit.screenHeight
   ...
```

###二、新增打印：JKPrint
