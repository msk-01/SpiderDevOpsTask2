for((i=1;i<=10;i++)); do
sudo chmod 777 -R /home/Patient${i}/Symptoms
sudo touch /home/Patient${i}/Symptoms/symptom_${i}
done
echo "anorexia " > /home/Patient1/Symptoms/symptom_1.txt
echo "cachexia" > /home/Patient2/Symptoms/symptom_2.txt
echo "Vertigo" > /home/Patient3/Symptoms/symptom_3.txt
echo "fatigue" > /home/Patient4/Symptoms/symptom_4.txt
echo "jaundice" > /home/Patient5/Symptoms/symptom_5.txt
echo "pyrexia" > /home/Patient6/Symptoms/symptom_6.txt
echo "arrhythmia" > /home/Patient7/Symptoms/symptom_7.txt
echo "bradycardia" > /home/Patient8/Symptoms/symptom_8.txt
echo "claudication" > /home/Patient9/Symptoms/symptom_9.txt
echo "palpitation" > /home/Patient10/Symptoms/symptom_10.txt
