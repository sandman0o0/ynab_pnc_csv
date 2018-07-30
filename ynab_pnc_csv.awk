BEGIN { FS="," ; print "Date,Payee,Memo,Outflow,Inflow";}
NR > 1 {
out="";
nin="";
{if($6~/DEBIT/){ out=$2;} 
if($6~/CREDIT/){nin=$2;} 
printf "%s,%s,,%s,%s\n",$1,$3,out,nin}}
