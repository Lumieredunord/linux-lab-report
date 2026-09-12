1.目标：name全空白时触发SystemExit(2)
2.编写测试用例test_blank_name
3.初始运行测试失败
4.修复cli.py，增加空白校验，修正__main__双下划线语法错误
5.重跑pytest全部通过，人工校验返回码=2
