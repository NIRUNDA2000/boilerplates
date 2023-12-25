```
for day in {01..31}; do
  sar -f /var/log/sysstat/sa$day > output.txt
done
```
