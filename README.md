# TCP BBR 魔改

参考nanqinlang的patch修改而成。

Linux内核:v5.1.5

# 测试

HK机器，实测加载模块后，使用ss效果并不如原版。

因此需要自己搞清楚BBR工作原理再修改参数值
