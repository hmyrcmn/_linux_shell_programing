<br/><br/>
# _linux_shell_programing
show the disk fullness situation with  whiptail user interface in shell programming <br/><br/>
shell programlamada whiptail kullanıcı arayüzüne df -h komutu aktarılmıştır.  <br/><br/>
df- h : disk doluluk durumunu gösteren komut  <br/><br/>
# DETAYLI ANLATIM
 
<br/><br/>
# PROJE GENEL ÖZET 
Linux da disk durumunu kullanıcı arayüzü ile göstermeyi amaçlamaktadır .
 Proje` df -h` komutunun kullanıcı dostu çıktısı (GB olarak gösterilen boyutlar) shell programlama ile ayrıştırılarak whitpail araçlarından processing bar aracılığyla kullanıcıya görsel olarak sunulmasını sağlar.
 <br/>


`df -h` komutunun kullanıcı okunurluğu için vermiş olduğu çıktılarının görünümü şu şekildedir.
<br/><br>
<br/>![KOMUT ÇIKTI GÖRÜNTÜSÜ görüntüler](https://miro.medium.com/max/1400/1*gOTMmsChrE6o-HdHlUQLVA.webp)<br/>
<br/><br/>
 Komut çıktısının whiptail araçlarından processing bar şeklinde gösterimi <br/>
<br/>![uı_output](https://miro.medium.com/max/1400/1*49ew-KgEA1GphFhNiJFpHA.webp) <br/>
<br/><br/>

Ayrıştırılan komut çıktısından elde edilen yüzde bilgisi yüz dilime ayrılmış 1 er artım şeklinde  ( sleep 1 ile bekleme sağlanarak ekranda ilerleme kullanıcıya gösterilir) ilerlemesi sağlanan for döngüsü içinde komut çıktısındaki değer ile eşleşmesi durumunda ilerleme barı (kırmızı renk ile gösterilen)  ilgili değerin konumuna sabitlenir  . Kullanıcıya gösterilmek üzere belirli bir bekleme süresinden sonra döngüden çıkılır ve komut ekranına dönülür.
<br/><br/>
# whiptail işleme 
`| whiptail --gauge "disk doluluk oranı hesaplanıyor lütfen bekleyiniz...  " 6 70 0 \` <br/>
  Whiptail parametreleri eşleştirmesi şu şekildedir :<br/>
 ` -- text alanı processing bara ait bilgi içerir --<height> <width> <inital percent>
`   --backtitle "arka planda üst kısımda çıkan yazı " `  : burada reel veriler yer almaktadır diske ait toplam alan ne kadar kullanımda veya değil gibi bilgiler GB olarak yer almaktadır  
   `--title "processing bar title " `   <br/>
   <br/><br/>
  # Nasıl Çalıştırılır?
  uı.sh uzantılı dosya  indirilerek komut ekranından `bash uı.sh ` şeklinde çalıştırılır.
  <br/><br/>
  
  # Dosya Nasıl Çalışıyor?
  Diskin doluluk durumuna göre bir bekleme süresi geçtik den sonra (yüzde olarak ilerleme ) bar kısmında kırmızı bar ilerleyerek aranan değere gelir kullanıcının görmesi için bilinçli olarak bekletildikten sonra komut ekranına dönülür .<br/><br/>
   # df -h komutu nedir ? 
   df -h – Daha iyi ve daha insan tarafından okunabilir formatta gösterecek. Bu şekilde disk boyutu GB ile gösterilecek.
  <br/><br/>
# Projeye Eklenebilecek Özellikler 
`df -h `komut çıktılarını her birinin seçilmesi durumunda doluluk oranını gösterilmesi sağlanabilir .
