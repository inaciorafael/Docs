#!bin/bash 

echo "Instalando react native."

echo "instalando nodejs"

sudo apt install curl 

curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -

sudo apt install nodejs npm  

echo "Instalando react-native-cli"

sudo npm install -g react-native-cli  

echo "Instalando Java8"

sudo add-apt-repository ppa:openjdk-r/ppa
sudo apt update 
sudo apt install openjdk-8-jdk 

java -version 

echo "Instalando libs graficas"

sudo apt install gcc-multilib lib32z1 lib32stdc++6

echo "Fazendo Download do sdk..."

wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip

echo "Criando diretório Android, movendo arquivos necessários e extraindo..."

mkdir ~/Android 
mkdir ~/Android/Sdk 
mv sdk-tools-linux-4333796.zip ~/Android/Sdk 
cd ~/Android/Sdk 
unzip sdk-tools-linux-4333796.zip 
rm sdk-tools-linux-4333796.zip 

echo "Criando variáveis de ambiente..."

echo "export ANDROID_HOME=~/Android/Sdk" >> ~/.bashrc 
echo "export PATH=$PATH:$ANDROID_HOME/tools" >> ~/.bashrc
echo "export PATH=$PATH:$ANDROID_HOME/platform-tools" >> ~/.bashrc

echo "Baixando o Sdk do Android"

~/Android/Sdk/tools/bin/sdkmanager "platform-tools" "platforms;android-27" "build-tools;27.0.3"

echo "Finalizado, verifique se houve algum erro."

