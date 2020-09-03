 sudo passwd Doc1
 sudo passwd Doc2
 sudo passwd Virus
 for i in {1..10} do
 sudo passwd Patient${i}
 done
 sudo su Virus
 touch /home/Doc1/Symptoms/visym1.txt
 touch /home/Doc2/Symptoms/visym2.txt
 for((i=1;i<11;i++));do
 touch /home/Patient${i}/Symptoms/visymp${i}.txt
 done
 if [wc -w /home/Doc1/Symptoms/visym1.txt > 20 ];
 then
   sudo userdel -f Doc1
 fi
if [wc -w /home/Doc2/Symptoms/visym2.txt > 20 ];
 then
   sudo userdel -f Doc2
 fi

for((i=1;i<11;i++));do
 if [wc -w /home/Patient${i}/Symptoms/visymp${i}.txt > 20 ];
   then
   sudo userdel -f Patient${i}
 fi
 done

pname, dname, symptom
function request
{
 for(( i=1; i<6;i++)); do
  if [ $2 == Doc1 && $1 == Patient${i} ]; then
  echo "$1 $2 $3" >> /home/Doc1/Requests/p${i}.txt
  fi
 done
for(( i=6; i<11;i++)); do
  if [ $2 == Doc2 && $1 == Patient${i} ]; then
  echo "$1 $2 $3" >> /home/Doc2/Requests/p${i}.txt
  fi
 done
for(( i=1; i<11;i++)); do
  if [ $1 == Patient${i} ]; then
echo "$3" >> /home/Patient${i}/Symptoms/symptom_${i}.txt
 fi
done
}
echo "TYPE REQUEST TO REQUEST VACCINES FROM DOCTORS"
read REQ
case "$REQ" in
"REQUEST") echo "You have selected to request vaccines..."
         echo "Enter your name"
         read pname
         echo "Enter doctor name"
         read dname
         echo "Enter your symptoms"
         read symptom
         request pname dname symptom
*) echo "You have entered an invalid choice, have a good day!"
esac
echo "0 12 * * * bash /home/Virus/addsym.sh" >> /var/spool/cron/crontabs/Virus

         












