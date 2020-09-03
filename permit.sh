sudo usermod -a -G Doc1,Doc2 Virus
for((i=1;i<11:i++)); do
sudo usermod -a -G Patient${i} Virus
done
sudo chmod 770 -R /home/Doc1
sudo chmod 770 -R /home/Doc2
sudo chmod 770 -R /home/Virus
sudo chown Doc1:Doc1 /home/Doc1
sudo chown Doc2:Doc2 /home/Doc2
sudo chown Virus:Virus /home/Virus
for ((i=1;i<6;i++)); do
chmod 740 -R /home/Doc1/Vaccines
sudo chown Patient${i}:Doc1 -R /home/Patient${i}
sudo chmod 770 -R /home/Patient${i}
done
for ((i=6;i<11;i++)); do
chmod 740 -R /home/Doc2/Vaccines
sudo chown Patient${i}:Doc2 -R /home/Patient${i}
sudo chmod 770 -R /home/Patient${i}
done



