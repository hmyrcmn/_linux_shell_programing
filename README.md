
# _linux_shell_programing
show the disk fullness situation with  whiptail user interface in shell programming

# PROJE GENEL ÖZET 
Linux da disk durumunu kullanıcı arayüzü ile göstermeyi amaçlamaktadir .
 proje df -h komutunun kulanıcı dostu çıktısı (GB olarak gösterilen boyutlar) shell programlama ile ayrıştırılarak whitpail araçlarından processing bar ile kullanıcıya görsel olarak sunulmasını sağlar ..
 


df -h komuutunun kullanıcı okunurlugu için vermiş oldugu çıktılarınn görünmü şu şekildedir 
<br/>![ df -h](https://medium.com/5a8189d8-ed59-4598-be18-72e57d36b4c7) <br/> 
<br/>![oyundan görüntüler](https://miro.medium.com/max/1400/1*Qwg4HzGtX-n31VhMbT7rTg.png)<br/>

whiptail araçlarından processing baar şeklinde gösterimi 
<br/>![uı_output](blob:https://medium.com/918b5996-33e6-4ad2-9c0a-e4eab18516bb)

ayrıştırılan komut çıktısından elde edilen yüzde bilgisi yüz dilime ayrılmış 1 er artım şeklinde ilerlemesi sağlanan for döngüsü içinde komut çıktısındaki deger ile eşleşmesi durumunda ilerleme barı (kırmızı renk ile gösterilen )  ilgili degerin konumuna yerşeltirilir . Kullanıcıya gösterilmek üzere belirli bir bekleme süresinden sonra döngüden çıkılır ve komut ekranına dönülür .

# whiptail işleme :
`| whiptail --gauge "disk doluluk oranı hesaplanana kadar  lütfen bekleyiniz! " 6 60 0 \` <br/>
  whiptailparametreleri eşleştirmesi şu şekildedir :<br/>
 ` -- text alanı processing bara ait bilgi içerir  -- width -- height -- frame sayısı`  <br/>
`   --backtitle "arka planda üst kısımda çıkan yazı " `  : burada reel veriler yer almaktadır diske ait toplam alan ne kadar kullanımda veya değil gibi bilgiler gb olarak yeralmaktadır  
   `--title "processing bar title " `   <br/>
  # Nasıl ÇAlıştırılır 
  .sh uzantılı indirilerek komut ekranından bash dosya_ismi.sh  şeklinde çalıştırılır .
  # Dosya Nasıl Çalışıyor ?
  Diskin doluluk durumuna göre bir bekleme süresi geçtikden sonra (yüzde olarak ilerleme ) bar kısmında kırmızı bar ilerleyerek aranan degere gelir kullanıcının görmesi için bilinçli olarak bekletirldikden sonra komus ekranına dönülür 
   
  
# Projeye Eklenebilecek Özellikler :
 her dosyaya ait doluluk oranlarını getirlimesi sadece diskin değil  dosyalarında doluluk oranlarının uı ile görsel olarak sunulması 
