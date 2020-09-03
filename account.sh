
sudo useradd Virus -m -s /bin/bash
sudo useradd Doc1 -m -s /bin/bash
sudo useradd Doc2 -m -s /bin/bash
for((i=1;i<3;i++)); do
 sudo chmod o+w -R /home/Doc${i}
done
 for((i=1;i<6;i++)); do
 sudo useradd Patient${i} -m -s /bin/bash
 sudo chmod o+w -R /home/Patient${i}
done  
for((i=6;i<11;i++)); do
 
 sudo useradd Patient${i} -m -s /bin/bash
sudo chmod o+w -R /home/Patient${i}
done        

