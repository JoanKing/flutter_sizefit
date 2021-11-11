
/* 进行打印操作，一个全局的函数 */
import 'package:flutter/foundation.dart';

void JKPrint(Object message, StackTrace current) {
  if (kReleaseMode){
    // release
  }else {
    // debug
    JKCustomTrace programInfo = JKCustomTrace(current);
    print("所在文件: ${programInfo.fileName}, 所在行: ${programInfo.lineNumber}, 打印信息: $message");
  }
}

class JKCustomTrace {
  final StackTrace _trace;

  String fileName;
  int lineNumber;
  int columnNumber;

  JKCustomTrace(this._trace) {
    _parseTrace();
  }

  /* 获取调用的轨迹 */
  void _parseTrace() {
    /* 切割 */
    var traceString = _trace.toString().split("\n")[0];
    /* 匹配所在的文件 */
    var indexOfFileName = traceString.indexOf(RegExp(r'[A-Za-z_]+.dart'));
    var fileInfo = traceString.substring(indexOfFileName);
    /* 匹配坐在的行 */
    var listOfInfos = fileInfo.split(":");
    fileName = listOfInfos[0];
    lineNumber = int.parse(listOfInfos[1]);
    var columnStr = listOfInfos[2];
    columnStr = columnStr.replaceFirst(")", "");
    columnNumber = int.parse(columnStr);
  }
}