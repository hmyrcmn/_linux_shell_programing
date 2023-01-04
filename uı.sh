#!bin/sh
echo "`df -h| grep 'Filesystem\|/dev/sda*'`"
echo "DISK DOLULUK DURUM GOSTERILIYOR "
echo "---------------------------------------"
toplam=$(df -h |grep dev/sda* | cut -c18-19)
echo "toplam alan: $toplam"
echo "---------------------------------------"
yuzde=$(df -h |grep dev/sda* | cut -c35-36)
echo "yuzde: $yuzde    "
echo "---------------------------------------"
kalan=$(df -h |grep dev/sda* | cut -c30-31)
echo "kalan: $kalan"
echo "---------------------------------------"
kullanilan=$(df -h |grep dev/sda* | cut -c24-25)
echo "kullanılan: $kullanilan"
{
 for i in {0..100..1}
 do
sleep 1
if [ $i -eq $yuzde ]
 then
 echo $i
sleep 1
break

fi
 echo $i

done
} | whiptail --gauge "Ekran,ilerleme sabitlendikden 10 sn sonra kapanacaktır! " 6 70 0 \
  --backtitle  "disk doluluk hesaplandı!"\
" % $yuzde doluluk oranına sahipitir! toplam alan : $toplam GB  kullanılan alan: $kullanilan GB  kalan alan:$kalan GB dir." \
  --title  "Disk Doluluk Göstergesi "\
 --scrolltext "% $yuzde" \
