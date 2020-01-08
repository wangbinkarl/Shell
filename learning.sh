#!/bin/bash
PRICE=$(expr $RANDOM % 1000)
echo $PRICE
TIMES=0
echo "商品实际价格为0-999之间，猜猜看是多少？"
while true
do
read -p "请输入你猜测的价格：" INT   #获取键盘输入
let TIMES++
if [ $INT -eq $PRICE ]; then
        echo "your answer is true,the price is $PRICE"
        echo "total times is $TIMES"
        exit 0
elif [ $INT -gt $PRICE ]; then
        echo "太高了！"
else
        echo "太低了"
fi
done
