n=0;
exit=1;

	echo "Masukkan nama anda."
	read nama

	while [[ $exit=1 ]]; 
	do
	#statements
	invoice = "BAJUI"1;
	let invoice=$invoice+3

	increment = 0;
	let increment=$increment+1

	clear
	echo "Hi $nama. Selamat datang di Toko Bangunan SukaBapak."
	echo "1. Create User."
	echo "2. Login User."
	read login
	if [[ $login -eq 1 ]];
	then
		echo "Buat  Username !"
		echo -n "Username = "
		read username;
		echo "Username selesai."
		echo "=========================="
		echo "Buat Password !"
		echo -n "Password = "
		read password;
		echo "Alhamdulillah, User kamu udah jadi."
		echo "=========================="
		let n=$n+1;
	elif [[ $login -eq 2 ]]; then 
		echo "Login !"
		echo -n "Username = "
		read usr;
		echo "=========================="
		echo "Password !"
		echo -n "Password = "
		read pwd;
		echo "=========================="
		if [[ $usr == $username && $pwd == $password ]];
			then
			echo "Kamu berhasil login."
			break;
		else
			echo "Kamu Salah memasukkan password."
			echo "Tolong ulangi lagi."
			exit=1;
		fi
		#statements
	fi
	done

exit=1;
while [[ $exit = 1 ]];
do
echo ""
echo "Menu"
   echo "1. Pembelian";
   echo "2. Pembayaran ";
   echo "3. Cetak Struk ";
   echo "4. KELUAR       ";
read -p "Pilih nomer berapa nih? " pilihan

if [ $pilihan -eq 1 ];
then
clear;
       echo "=====================================";
       echo "        MENU HARGA BARANG BANGUNAN ";
       echo "=====================================";
       echo "1. Semen       RP 32.000";
       echo "2. Seng        RP 50.000";
       echo "3. Kayu        RP 70.000";
       echo "=====================================";
       echo -n "Masukan Nama anda                 :";
       read nama 
       echo -n "Masukan Alamat anda               :";
       read alamat
       echo -n "E-mail        : "
       read email
       echo -n "No HP         : "
       read hp
       echo -n "Masukan jenis barang anda (1-3)    :";
       read jenis
       echo -n "Masukan jumlah barang yang di beli : "
       read jum
       echo "=====================================";
       if [ $jenis -eq 1 ];
       then
	       kelas="Semen";
	       tiket=32000;
	       let total=jum*tiket;
       elif [ $jenis -eq 2 ];
       then
	       kelas="Seng";
	       tiket=50000;
	       let total=jum*tiket; 
       elif [ $jenis -eq 3 ];
       then
	       kelas="Kayu";
	       tiket=70000;
	       let total=jum*tiket;
       else
	       echo "Sorry, tidak tersedia"
	       exit=0;
       fi
elif [ $pilihan -eq 2 ];
then
       echo "Pilihan Pembayaran."
       echo "1. Online.";
       echo "2. Offline.";
       read -p "Masukkin Pilihan : " pembayaran
       echo ""
       if [ $pembayaran -eq 1 ];
       then
	       echo "1. Kartu Kredit."
	       echo "2. Transfer Bank"
	       read -p "Masukkin Pilihan : " bayar
	       if [ $bayar -eq 1 ];
	       then
		       echo -n "Masukkan nomor kartu kredit anda : "
		       read cc
		       if [ $cc -eq 18081999 ];
		       then
			       echo "No Invoice : "$invoice
			       echo "Pembayaran Berhasil."
	       else
	       echo "Inputan Salah."
	   fi
	       fi
       elif [[ $bayar -eq 2 ]];
       then
	       echo "Masukkan nomor Kartu atm anda : "
	       read atm
	       echo "Masukkan otp yang telah dikirimkan ke nomor telepon anda."
	       read otp
	       if [ $otp -eq 18081999 ];
	       then
		       echo "No Invoice : "$invoice
		       echo "Pembayaran anda telah terverifikasi."
		       echo "Pembayaran Berhasil."
	       else
		       echo "Inputan salah !!"
		       echo "Masukkan nomor atm yang benar"
	       fi
       echo ""
       elif [[ $pembayaran -eq 2 ]]; 
       then
       echo "Pembayaran di kasir."
       else
       echo "Inputan anda salah."
       fi
       echo ""

elif [ $pilihan -eq 3 ];
then
       clear;
       echo "DATA PEMBELI ";
       echo "++++++++++++++++++++++++++++++++++++";
       echo "No invoice  : $invoice"
       echo "NAMA        : $nama";
       echo "ALAMAT      : $alamat";
       echo "KELAS       : $kelas";
       echo "JUMLAH      : $jum";
       echo "Nomor Hp    : $hp"
       echo "E-mail      : $email"
       echo "++++++++++++++++++++++++++++++++++++";
       echo "TOTAL BAYAR : $total";
       echo "++++++++++++++++++++++++++++++++++++";
       echo
else
	exit=0;
	echo "Arigatou Gozaimasu."
fi
done
