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

- `sudo gedit /etc/suricata/suricata.yaml` - ...
                                                af-packet:
                                                   interface: ens32
                                                ...
                                                pcap:
                                                   interface: ens32
                                                ...
                                                pfring:
                                                   interface: ens32
                                                ...

`systemctl status/start/stop/restart suricata` - узнать статус / запустить / остановить / перезапуск suricata 