for((i=1;i<6;i++)); do
sudo chmod o+w -R /home/Doc1/Vaccines
sudo touch /home/Doc1/Vaccines/vaccine_${i}.txt
done
for((i=6;i<11;i++)); do
sudo chmod o+w -R /home/Doc2/Vaccines
sudo touch /home/Doc2/Vaccines/vaccine_${i}.txt
done
echo "Vaxchora" > /home/Doc1/Vaccines/vaccine_1.txt
echo "Daptacel" > /home/Doc1/Vaccines/vaccine_2.txt
echo "Tenivac" > /home/Doc1/Vaccines/vaccine_3.txt
echo "Havrix" > /home/Doc1/Vaccines/vaccine_4.txt
echo "Twinrix" > /home/Doc1/Vaccines/vaccine_5.txt
echo "Pediarix" > /home/Doc1/Vaccines/vaccine_6.txt
echo "Pentacel" > /home/Doc1/Vaccines/vaccine_7.txt
echo "Adacel" > /home/Doc1/Vaccines/vaccine_8.txt
echo "Prevnar13" > /home/Doc1/Vaccines/vaccine_9.txt
echo "Pneumovax 23" > /home/Doc1/Vaccines/vaccine_10.txt
