#!/bin/bash
echo "ESTADISTICAS REALIZADAS EN EL SIGUIENTE DIA Y HORA: " >> /root/.estadisticas/tiemUsuarConec.txt
date +"%d/%m/%Y" >> /root/.estadisticas/tiemUsuarConec.txt
date +"%H:%M" >> /root/.estadisticas/tiemUsuarConec.txt
ac -d |sort -n -k4 -r |head -n 20 >> /root/.estadisticas/tiemUsuarConec.txt
