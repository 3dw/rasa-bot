# rasa-bot
 自學chatbot

## 安裝


1. 進入命令列/終端機

2. follow 本頁 [安裝程序](https://rasa.com/docs/rasa/user-guide/installation/#installation-guide)

note: 請安裝rasa==1.8.3以避免錯誤


## 近端測試

先進去專案目錄，再輸入


```

pip install -U pip
pip install rasa==1.8.3

rasa train
rasa shell
```

即可和機器人聊天

## 鍵入資料

打開handbook-data.json

把資料輸入進

1. domain.yml
2. data/nlu.md
3. data/stories.md

中