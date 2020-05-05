#!/bin/bash

echo "ESTADÍSTICAS REALIZADAS EN EL SIGUIENTE DIA Y HORA" >> /root/.estadisticas/tiemCadaUsuarConec.txt
date +"%d/%m/%Y" >> /root/.estadisticas/tiemCadaUsuarConec.txt
date +"%H:%M" >> /root/.estadisticas/tiemCadaUsuarConec.txt
ac -p |sort -n -k2 -r |head -n 20 >> /root/.estadisticas/tiemCadaUsuarConec.txt
