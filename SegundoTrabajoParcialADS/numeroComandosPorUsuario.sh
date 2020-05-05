#!/bin/bash

echo "ESTADÍSTICAS OBTENIDAS A DÍA Y HORA: ">> /root/.estadisticas/numeroComandosPorUsuario.txt
date +"%d/%m/%Y" >> /root/.estadisticas/numeroComandosPorUsuario.txt
date +"%H:%M" >> /root/.estadisticas/numeroComandosPorUsuario.txt
sa -m |sort -k1 -r |head -n 30 >>/root/.estadisticas/numeroComandosPorUsuario.txt

