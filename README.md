# Репозиторий с установочными файлами

| snort3 | suricata | metasploitable3 | 
|:---------------------:|:-----------------------:|:-------------------------------:|
| `./install-snort3.sh` | `./install-suricata.sh` | `./install-Metasploitable3l.sh`  <br> Пользователь: vagrant <br> Пароль: vagrant |


# Некоторые встроенные уязвимости в Metasploitable3

| Порты | Доступ | Модуль в Metasploit | CVE | Описание |
|:-----:|:-----------------------:|:--------------------------:|:-------------------------:|:-----:|
|80 - HTTP|[http://localhost](http://localhost)|auxiliary/dos/http/ms15_034_ulonglongadd|CVE-2015-1635| DOs |
|8484 - HTTP|[http://localhost:8484](http://localhost:8484)|exploits/multi/http/jenkins_script_console &#124; auxiliary/scanner/http/jenkins_enum|  | доступ Meterpreter &#124; поиск серверов Jenkins |

# IDS suricata 

`ip a` - узнать название сетевого интерфейса

Базовая настройка:

- `sudo gedit /etc/default/suricata` - IFACE = название интерфейса 

- `sudo gedit /etc/suricata/suricata.yaml` - ... <br>af-packet: <br>    interface: название интерфейса <br>...<br>pcap:<br>   interface: название интерфейса <br>...<br>pfring:<br>   interface: название интерфейса<br>...

- `sudo su` -> `gedit /var/lib/suricata/rules/suricata.rules` - назначение правил 

- `sudo tail -f /var/log/suricata/fast.log` - вывод логов в терминал

`systemctl status/start/stop/restart suricata` - узнать статус / запустить / остановить / перезапуск suricata 