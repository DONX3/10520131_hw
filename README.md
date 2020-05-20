# 10520131_final_project
 PUBG輸贏影響因子分析  

數據打算用這個網站提供的[連結](https://www.kaggle.com/c/pubg-finish-placement-prediction/overview "https://www.kaggle.com/c/pubg-finish-placement-prediction/overview")  
![GITHUB](資料源網站截圖.png)  

檔案有三個  
sample_submission_V2.csv  
test_V2.csv 有1934174筆資料  
train_V2.csv 有4446966筆資料  

取後面兩個檔案其中一個 還沒決定  


目前想的幾個點子:  
1.是否搭乘車輛與輸贏的關係  
2.擊殺數與輸贏的關係  
3.車輛行駛距離與步行移動距離與輸贏關係  
4.擊殺數過高的數據不能參考可能是外掛  
    因此跟他同隊伍和同一場比賽的資料要分開處理  
5.當場次中疑似出現外掛 該場次最終獲勝者是否可能也是外掛  
   因為這個數據是兩年前的 當時遊戲官方外掛還沒有抓很兇  
   所以也許比較不用考慮被ban的可能  