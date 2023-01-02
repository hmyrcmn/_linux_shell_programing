<br/><br/>
# _linux_shell_programing
show the disk fullness situation with  whiptail user interface in shell programming <br/><br/>

# PROJE GENEL ÖZET 
Linux da disk durumunu kullanıcı arayüzü ile göstermeyi amaçlamaktadır .
 Proje` df -h` komutunun kullanıcı dostu çıktısı (GB olarak gösterilen boyutlar) shell programlama ile ayrıştırılarak whitpail araçlarından processing bar ile kullanıcıya görsel olarak sunulmasını sağlar.
 <br/>


`df -h` komutunun kullanıcı okunurluğu için vermiş olduğu çıktılarının görünümü şu şekildedir.
<br/><br>
<br/>![KOMUT ÇIKTI GÖRÜNTÜSÜ görüntüler](https://miro.medium.com/max/1400/1*gOTMmsChrE6o-HdHlUQLVA.webp)<br/>
<br/><br/>
 Komut çıktısının whiptail araçlarından processing bar şeklinde gösterimi <br/>
<br/>![uı_output](https://miro.medium.com/max/1400/1*49ew-KgEA1GphFhNiJFpHA.webp) <br/>
<br/><br/>

Ayrıştırılan komut çıktısından elde edilen yüzde bilgisi yüz dilime ayrılmış 1 er artım şeklinde ilerlemesi sağlanan for döngüsü içinde komut çıktısındaki değer ile eşleşmesi durumunda ilerleme barı (kırmızı renk ile gösterilen)  ilgili değerin konumuna yerleştirilir . Kullanıcıya gösterilmek üzere belirli bir bekleme süresinden sonra döngüden çıkılır ve komut ekranına dönülür.
<br/><br/>
# whiptail işleme 
`| whiptail --gauge "disk doluluk oranı hesaplanana kadar lütfen bekleyiniz! " 6 60 0 \` <br/>
  Whiptail parametreleri eşleştirmesi şu şekildedir :<br/>
 ` -- text alanı processing bara ait bilgi içerir -- width -- height -- frame sayısı`  <br/>
`   --backtitle "arka planda üst kısımda çıkan yazı " `  : burada reel veriler yer almaktadır diske ait toplam alan ne kadar kullanımda veya değil gibi bilgiler GB olarak yer almaktadır  
   `--title "processing bar title " `   <br/>
   <br/><br/>
  # Nasıl Çalıştırılır?
  .sh uzantılı indirilerek komut ekranından bash dosya_ismi.sh şeklinde çalıştırılır.
  <br/><br/>
  # Dosya Nasıl Çalışıyor?
  Diskin doluluk durumuna göre bir bekleme süresi geçtik den sonra (yüzde olarak ilerleme ) bar kısmında kırmızı bar ilerleyerek aranan değere gelir kullanıcının görmesi için bilinçli olarak bekletildikten sonra komut ekranına dönülür 
   
  <br/><br/>
# Projeye Eklenebilecek Özellikler 
`df -h `komut çıktılarını her birinin seçilmesi durumunda doluluk oranını gösterilmesi sağlanabilir .
