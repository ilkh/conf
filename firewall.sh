iptables -A INPUT -i eth0 -p icmp -j ACCEPT # ��������� ���� �� ������� �������
iptables -A INPUT -i eth0 -m state --state RELATED,ESTABLISHED -j ACCEPT # ��������� ������ ��� �������� ��� ����������� ����������
iptables -A INPUT -s 12.34.56.78 -i eth0 -j ACCEPT # ����� ��������� IP �����, � �������� �� ��� ���������� ����� ������ ������ �� ���� ������ (���� ��� ���������)
iptables -A INPUT -i eth0 -p tcp -m tcp --dport 22 -j ACCEPT  # ssh
iptables -A INPUT -i eth0 -p tcp -m tcp --dport 80 -j ACCEPT # web
iptables -A INPUT -i eth0 -j DROP # ��������� ��� ���������