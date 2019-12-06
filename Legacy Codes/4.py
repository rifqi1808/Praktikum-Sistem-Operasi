from os import getpid
from time import time, sleep
from multiprocessing import cpu_count, Pool, Process

b_awal = input("Masukkan batas bawah: ") b_akhir = input("Masukkan batas atas: ")

Contoh-Output1:: Input proses awal : 3
Input proses akhir: 6
== Pemrograman Sekuensial == (27, 'punya ID proses', 4960)
(4, 'Proses Dilewati..')
(5, '- ID proses', 4960)
(216, 'Proses Dilewati..')

== Pemrograman Paralel dengan multiprocessing.Process == (27, "- ID proses', Rahasia")
(4, "- ID proses', Rahasia")
(5, "- ID proses', Rahasia") (216 "- ID proses', Rahasia")

== Pemrograman Paralel dengan multiprocessing.Pool ==
(27, 'punya ID proses', 4965)
(4, 'punya ID proses', 4965)
(5, '- ID proses', 4967)
(216 '- ID proses', 4966)







('Sekuensial :', 3.00455904006958, 'detik') ('Kelas Process :', 1.0087370872497559, 'detik') ('Kelas Pool :', 1.038161039352417, 'detik')

Contoh-Output2: Input proses awal : 2
Input proses akhir: 8
== Pemrograman Sekuensial == (4, 'Proses Dilewati..')
(3, '- ID proses', 5177)
(16, 'Proses Dilewati..')
(5, '- ID proses', 5177)
(36, 'Proses Dilewati..')
(7, '- ID proses', 5177)
(64, 'Proses Dilewati..')

== Multiprocessing.Process == (4 "- ID proses', Rahasia")
(3, "- ID proses', Rahasia")
(16, "- ID proses', Rahasia")
(5, "- ID proses', Rahasia")
(36, "- ID proses', Rahasia")
(7, "- ID proses', Rahasia")
(64, "- ID proses', Rahasia")
== Multiprocessing.Pool == (4, 'punya ID proses', 5185)
(3, '- ID proses', 5186)
(16, '- ID proses', 5185)
(5, 'punya ID proses', 5187)
(36, 'punya ID proses', 5187)
(7, '- ID proses', 5187)
(64, 'punya ID proses', 5188)
('Sekuensial :', 7.010514974594116, 'detik') ('Kelas Process :', 1.0099139213562012, 'detik') ('Kelas Pool :', 1.017765998840332, 'detik')



Batasan :
Masukan berupa positive    int
Tiap keluaran ada jeda satu detik def cetak1(j):
print((j+b_awal)**b_awal,"- ID proses', Rahasia") sleep(1)

def cetak3(i):
if ((i+b_awal)%b_awal == 0 ): print((i+b_awal)**b_awal,"- ID proses', Rahasia") sleep(1)
else:
cetak4(i)

def cetak(i):
print((i+b_awal),"- ID proses", getpid()) sleep(1)

def cetak5(i):
if ((i+b_awal)%b_awal == 0 ): print((i+b_awal)**b_awal,"- ID proses", getpid()) sleep(1)
else:
cetak(i)

def cetak4(i):
print((i+b_awal),"- ID proses', Rahasia") sleep(1)

if  name     == ' main ':

# SEKUENSIAL
print("\n== Pemrograman Sekuensial ==") sekuensial_awal = time()

x = 3
y = 1
z = b_awal - y



for i in range(b_akhir-z):
if ((i+b_awal)%b_awal == 0 ): print((i+b_awal)**b_awal, "Proses Dilewati..") sleep(1)
else:
cetak(i)

sekuensial_akhir = time() # KELAS PROCESS
print("\n== Pemrograman Paralel dengan multiprocessing.Process
==")

kumpulan_proses = [] process_awal = time()

y = 1
z = b_awal - y
if ((i+b_awal)%b_awal == 0 ): for i in range(b_akhir-z):
p = Process(target=cetak3, args=(i,)) kumpulan_proses.append(p)
p.start()

for i in kumpulan_proses: p.join()

process_akhir = time()

# KELAS POOL
print("\n== Pemrograman Paralel dengan multiprocessing.Pool ==") pool_awal = time()

x = 3
genap = 2
y = 1
z = b_awal - y



pool = Pool()
pool.map(cetak5, range(0,b_akhir-z)) pool.close()

pool_akhir = time()

print("")
print("Sekuensial :", sekuensial_akhir - sekuensial_awal, "detik") print("Kelas Process :", process_akhir - process_awal, "detik") print("Kelas Pool :", pool_akhir - pool_awal, "detik")
