#!/bin/bash

echo "INFORMACION ALMACENADA A DIA Y HORA:" >> /root/.estadisticas/comandosMasEjecutados.txt
date +"%d/%m/%Y" >>/root/.estadisticas/comandosMasEjecutados.txt
date +"%H:%M" >> /root/.estadisticas/comandosMasEjecutados.txt
sa |sort -k1 -r |head -n 30 >> /root/.estadisticas/comandosMasEjecutados.txt
