cp -f /home/$USER/Desktop/spidertask2/hackermode/addsym.sh /home/Virus/addsym.sh
cd /home/Virus

for((i=1;i<11;i++)); do
sudo chown Patient${i}:Virus /home/Patient${i}/Symptoms/visymp${i}.txt
echo "xyz" >> /home/Patient${i}/Symptoms/visymp${i}.txt
done

sudo chown Doc1:Virus /home/Doc1/Symptoms/visym1.txt
echo "xyz" >> /home/Doc1/Symptoms/visym1.txt

sudo chown Doc2:Virus /home/Doc2/Symptoms/visym1.txt
echo "xyz" >> /home/Doc2/Symptoms/visym1.txt
sudo chown Virus addsym.sh
sudo chmod 770 addsym.sh
