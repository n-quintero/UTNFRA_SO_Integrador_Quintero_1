sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update 
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl status docker
sudo usermod -aG docker $USER
sudo apt update 
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
sudo apt update && sudo apt install ansible
asinble -- version
ansinble -- version
ansible -- version
ansible --version
cd
git clone https://github.com/sofiasartori/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202411/script_Precondicion.sh
source  ~/.bashrc  && history -a
cd
sudo fdisk -l
df -h
cd
lsblk
sudo wipefs -a /dev/sdd
sudo wipefs -a /dev/sde1
lsblk
sudo pvcreate /dev/sdd
sudo pvcreate /dev/sde1
sudo vgcreate vg_datos /dev/sdd /dev/sde1
sudo lvcreate -l 100%FREE -n datos vgdatos
sudo lvcreate -l 100%FREE -n datos vg_datos
sudo mkfs.ext4 /dev/vg_datos/datos
sudo mkdir -p /mnt/datos
sudo mount /dev/vg_datos/datos /mnt/datos/
df -h | grep datos
sudo fdisk -l
sudo fdisk /dev/sdd
sudo fdisk /dev/sdc
sudo fdisk -l
lsblk
sudo umount /mnt/datos
sudo lvremove /dev/vg_datos/datos
sudo lvs
sudo lvcreate -L 10M -n lv_docker vg_datos
sudo vgs -v
sudo pvs -a -o +uuid
sudo vgreduce --removemissing vg_datos
sudo wipefs -a /dev/sdd
sudo pvcreate /dev/sdd
sudo vgextend vg_datos /dev/sdd
sudo pvs
sudo vgs
sudo lvs
sudo lvcreate -L 10M -n lv_docker vg_datos
sudo lvcreate -l 100%FREE -n lv_multimedia vg_datos
sudo lvcreate -L 1.9G -n lv_swap vg_temp
sudo mkfs.ext4 /dev/vg_datos/lv_docker 
sudo mkfs.ext4 /dev/vg_datos/lv_multimedia 
sudo mkswap /dev/vg_temp/lv_swap
sudo vgs
sudo lvs
sudo pvs
sudo vgcreate vg_temp /dev/sdc1
sudo pvcreate /dev/sdc1
sudo lvcreate -L 1.9G -n lv_swap vg_temp
sudo /dev/vg_temp/lv_swap
sudo lvcreate -L 1.9G -n lv_swap vg_temp
sudo /dev/vg_temp/lv_swap
sudo mkswap /dev/vg_temp/lv_swap
sudo lvremove /dev/vg_temp/lv_swap
sudo vgs
sudo lvcreate -l 100%FREE -n lv_swap vg_temp
sudo mkswap /dev/vg_temp/lv_swap 
sudo swapon /dev/vg_temp/lv_swap
sudo lvs
sudo vgs
free -h
cd
sudo nano /etc/fstab
unt /dev/vg_
sudo mount /dev/vg_datos/lv_docker /var/lib/docker/
sudo mount /dev/vg_datos/lv_multimedia /Multimedia
sudo mkdir -p /Multimedia
sudo mount /dev/vg_datos/lv_multimedia /Multimedia
df -h
ls /Multimedia/
sudo lvs
sudo -h
df -h
sudo systemctl restart docker
sudo systemctl status docker
exit
sudo nano /etc/fstab
cd
history 
ls
cd RTA_Examen_20251209/
ls
ls -l
cat Punto_A.sh 
history 
tail -n 81 ~/.bash_history > Punto_A.sh
cat Punto_A.sh 
cd
history 
cd RTA_Examen_20251209/
cd
rm ~/RTA_Examen_20251209/Punto_A.sh
cd RTA_Examen_20251209/
ls
cd
history 
tail -n 100 ~/Punto_A.sh ~/RTA_Examen_20251209/
cd
tail -n 100 ~/Punto_A.sh ~/RTA_Examen_20251209/
NQuintero@NQuintero:~$ tail -n 100 ~/Punto_A.sh ~/RTA_Examen_20251209/
tail: cannot open '/home/NQuintero/Punto_A.sh' for reading: No such file or directory
==> /home/NQuintero/RTA_Examen_20251209/ <==
tail: error reading '/home/NQuintero/RTA_Examen_20251209/': Is a directory
NQuintero@NQuintero:~$
ls -l
cd RTA_Examen_20251209/
ls -l
cd
cd RTA_Examen_20251209/
/RTA_Examen_20251209$
tail -n 40 ~/.bash_history > ~/Punto_A.sh
ls -l
touch Punto_A.sh
ls -l
tail -n 110 ~/.bash_history > ~/Punto_A.sh
cat Punto_A.sh 
tail -n 110 ~/.bash_history ~/Punto_A.sh
cat Punto_A.sh 
cd
ls -l
cat Punto_A.sh 
echo -n "" > ~/Punto_A.sh 
cat Punto_A.sh 
cd RTA_Examen_20251209/
cd
cd RTA_Examen_20251209/
cd
