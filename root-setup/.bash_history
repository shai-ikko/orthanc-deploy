ls /home/
pwd
adduser ort
passwd -l ort
less /etc/passwd-
su - ort
docker
apt install docker.io
apt install docker-compose-v2 
apt install nginx
apt install ssl-cert
apt upgrade
adduser ort docker
history > setup.txt
less setup.txt 
mv setup{,-root}.txt 
ls ~ort/
less nginx.conf
ls ~ort/nginx.conf 
less ~ort/nginx.conf 
less /etc/nginx/sites-enabled/default 
ls -l /etc/nginx/sites-enabled/default
enable --help
rm /etc/nginx/sites-enabled/default
cp ~ort/nginx.conf /etc/nginx/sites-available/orthanc
cd /etc/nginx/sites-enabled/
ls
ln -s /etc/nginx/sites-available/orthanc .
ls -l
nginx -t
nano /etc/nginx/sites-available/orthanc 
ls ..
cd ..
mkdir tls
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout tls/ortkey.pem -out tls/ortcert.pem -subj "/CN=orthanc-0.ikko.health"
cd -
nano /etc/nginx/sites-available/orthanc 
nginx -t
systemctl restart nginx.service 
su - ort
