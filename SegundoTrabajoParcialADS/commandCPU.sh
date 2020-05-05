#!/bin/bash

echo "ESTADÍSTICAS REALIZADAS EN EL SIGUIENTE DIA Y HORA" >> /root/.estadisticas/commandCPU.txt
date +"%d/%m/%Y" >>/root/.estadisticas/commandCPU.txt
date +"%H:%M" >>/root/.estadisticas/commandCPU.txt
sa -a | sort -k5 -r |head -n 30 >> /root/.estadisticas/commandCPU.txt
