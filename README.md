CamFin - Campaign Finance Visualization 政治獻金分析
------------------

資料來源: 政治獻金專案 by ronnywang and timonthy
參考:  http://ronnywang.pixnet.net/blog/post/40488349

說明
------------------
政治獻金數據為 Ronnywang 等人至監察院影印出來，透過 OCR 及群眾協作的方式轉為數位化。
每個政治人物有許多 pdf, 每個 pdf 有一個 id。

線上取得圖片網誌:
* 列表: http://campaign-finance.g0v.ronny.tw/
* 單個表格: (1070 即為 id): http://campaign-finance.g0v.ronny.tw/table/show/1070

群眾外包 OCR:
* 網站: http://campaign-finance.g0v.ctiml.tw/
* 已完成表格: http://campaign-finance.g0v.ctiml.tw/api/getdonepages 
* id=1100 的表格內所有值: http://campaign-finance.g0v.ctiml.tw/api/getcells/1100 

pdf 基本格式:
* 序號(x,1)
* 日期(x,2)
* 收支科目(x,3)
* 捐贈者(x,4)
* 身分證(x,5)
* 收入金額(x,6)
* 支出(x,7)
* 金錢類(x,8)
* 地址(x,9)
 
其他資訊
---------------
* 新聞報導: http://www.appledaily.com.tw/realtimenews/article/politics/20140419/382011/
* hackfolder: http://hack.g0v.tw/g0v-cy/8ow2GnliH48
* 呈現: http://campaign-finance.g0v.lackneets.tw/
