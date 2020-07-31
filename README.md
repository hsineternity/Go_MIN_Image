透過不同方式編寫 Dockerfile 產生出不同的 Image 大小.  
詳細的內容可以依據 commit 內容觀看 dockerfile 差異.  

* level 1 
  * 最初 code 內容僅只有 hello world, 以 Single build 方式產生 Image : size 373MB
  * 來源參考 [Docker Multi-Stage 編譯出 Go 語言最小 Image by appleboy](https://blog.wu-boy.com/2017/04/build-minimal-docker-container-using-multi-stage-for-go-app/)

* level 2 
  * 發現如果內容只有 hello world 無法加入 golang 1.11版推出 go module, 故在專案中加入第三方套件來測試
  * 並以 Single build 方式產生 Image : size 379MB

* final 
  * 依照 level 2, 以 Multiple build 方式產生 Image : size 13.4MB
