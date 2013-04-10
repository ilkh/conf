iptables -A INPUT -i eth0 -p icmp -j ACCEPT # разрешаем пинг до нашаего ресурса
iptables -A INPUT -i eth0 -m state --state RELATED,ESTABLISHED -j ACCEPT # разрешаем только уже поднятые или порождаемые соединения
iptables -A INPUT -s 12.34.56.78 -i eth0 -j ACCEPT # здесь указываем IP адрес, с которого бы нам желательно иметь полный доступ ко всем портам (если это требуется)
iptables -A INPUT -i eth0 -p tcp -m tcp --dport 22 -j ACCEPT  # ssh
iptables -A INPUT -i eth0 -p tcp -m tcp --dport 80 -j ACCEPT # web
iptables -A INPUT -i eth0 -j DROP # запрещаем все остальное