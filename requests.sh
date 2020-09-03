for((i=1;i<6;i++)); do
sudo chmod o+w -R /home/Doc1/Requests
sudo touch /home/Doc1/Requests/p${i}.txt
done
for((i=6;i<11;i++)); do
sudo chmod o+w -R /home/Doc2/Requests
sudo touch /home/Doc2/Requests/p${i}.txt
done

for((i=1;i<6;i++)); do
chown Doc1:Patient${i} /home/Doc1/Requests/p${i}.txt
done

for((i=6;i<11;i++)); do
chown Doc2:Patient${i} /home/Doc2/Requests/p${i}.txt
done
