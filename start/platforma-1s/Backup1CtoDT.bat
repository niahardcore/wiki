echo off
chcp 1251
set datepath=%date:~6,4%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%
set base1=UNFCRM
set base2=BUH
set base3=BARSUGRA
set base4=GPHRM

set base5=uzbekistan
set base6=injir_accounting
set base7=zup_ayva
set base8=zup_injir
set base9=zup_nektarin
set base10=zup_rukami
set base11=zup_mindal
set base12=zup_zhasmin


"C:\Program Files\1cv8\8.3.23.2040\bin\ibcmd.exe" infobase dump --db-server=localhost --dbms=postgresql --db-user=postgres --db-pwd=qwerty@2 --db-name=%base1% --user="СкосыревДА" --password="12000" D:\Backup1C\UNFCRM\%base1%_%datepath%.dt

"C:\Program Files\1cv8\8.3.23.2040\bin\ibcmd.exe" infobase dump --db-server=localhost --dbms=postgresql --db-user=postgres --db-pwd=qwerty@2 --db-name=%base2% --user="Администратор" --password="iddqdidkfa" D:\Backup1C\BUH\%base2%_%datepath%.dt

"C:\Program Files\1cv8\8.3.23.2040\bin\ibcmd.exe" infobase dump --db-server=localhost --dbms=postgresql --db-user=postgres --db-pwd=qwerty@2 --db-name=%base3% --user="Барс-Югра" --password="iddqdidkfa" D:\Backup1C\BARSUGRA\%base3%_%datepath%.dt

"C:\Program Files\1cv8\8.3.23.2040\bin\ibcmd.exe" infobase dump --db-server=localhost --dbms=postgresql --db-user=postgres --db-pwd=qwerty@2 --db-name=%base4% --user="Хорошие люди" --password="iddqdidkfa" D:\Backup1C\GPHRM\%base4%_%datepath%.dt

"C:\Program Files\1cv8\8.3.23.2040\bin\ibcmd.exe" infobase dump --db-server=localhost --dbms=postgresql --db-user=postgres --db-pwd=qwerty@2 --db-name=%base5% --user="Хорошие люди" --password="iddqdidkfa" D:\Backup1C\injir\%base5%_%datepath%.dt

"C:\Program Files\1cv8\8.3.23.2040\bin\ibcmd.exe" infobase dump --db-server=localhost --dbms=postgresql --db-user=postgres --db-pwd=qwerty@2 --db-name=%base6% --user="Хорошие люди" --password="iddqdidkfa" D:\Backup1C\injir\%base6%_%datepath%.dt

"C:\Program Files\1cv8\8.3.23.2040\bin\ibcmd.exe" infobase dump --db-server=localhost --dbms=postgresql --db-user=postgres --db-pwd=qwerty@2 --db-name=%base7% --user="Хорошие люди" --password="iddqdidkfa" D:\Backup1C\injir\%base7%_%datepath%.dt

"C:\Program Files\1cv8\8.3.23.2040\bin\ibcmd.exe" infobase dump --db-server=localhost --dbms=postgresql --db-user=postgres --db-pwd=qwerty@2 --db-name=%base8% --user="Хорошие люди" --password="iddqdidkfa" D:\Backup1C\injir\%base8%_%datepath%.dt

"C:\Program Files\1cv8\8.3.23.2040\bin\ibcmd.exe" infobase dump --db-server=localhost --dbms=postgresql --db-user=postgres --db-pwd=qwerty@2 --db-name=%base9% --user="Хорошие люди" --password="iddqdidkfa" D:\Backup1C\injir\%base9%_%datepath%.dt

"C:\Program Files\1cv8\8.3.23.2040\bin\ibcmd.exe" infobase dump --db-server=localhost --dbms=postgresql --db-user=postgres --db-pwd=qwerty@2 --db-name=%base10% --user="Хорошие люди" --password="iddqdidkfa" D:\Backup1C\injir\%base10%_%datepath%.dt

"C:\Program Files\1cv8\8.3.23.2040\bin\ibcmd.exe" infobase dump --db-server=localhost --dbms=postgresql --db-user=postgres --db-pwd=qwerty@2 --db-name=%base11% --user="Хорошие люди" --password="iddqdidkfa" D:\Backup1C\injir\%base11%_%datepath%.dt

"C:\Program Files\1cv8\8.3.23.2040\bin\ibcmd.exe" infobase dump --db-server=localhost --dbms=postgresql --db-user=postgres --db-pwd=qwerty@2 --db-name=%base12% --user="Хорошие люди" --password="iddqdidkfa" D:\Backup1C\injir\%base12%_%datepath%.dt









