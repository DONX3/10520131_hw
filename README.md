# 10520131_final_project
 PUBG輸贏影響因子分析  

數據打算用這個網站提供的[https://www.kaggle.com/c/pubg-finish-placement-prediction/overview](https://www.kaggle.com/c/pubg-finish-placement-prediction/overview "https://www.kaggle.com/c/pubg-finish-placement-prediction/overview")  
![GITHUB](資料源網站截圖.png)  

該網站中檔案有三個  
sample_submission_V2.csv  
test_V2.csv 有1934174筆資料  
train_V2.csv 有4446966筆資料  

目前決定取train_V2.csv來使用  


目前想的幾個點子:  
1.是否搭乘車輛與輸贏的關係  
2.步行移動距離與擊殺的關係  
3.擊殺數與輸贏的關係  
4.車輛行駛距離與步行移動距離與輸贏關係  
5.擊殺數過高的數據不能參考可能是外掛  
    因此跟他同隊伍和同一場比賽的資料要分開處理  
6.當場次中疑似出現外掛 該場次最終獲勝者是否可能也是外掛 