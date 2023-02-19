#!/bin/sh

# Edit the config file
cd /app
echo "[PC Miner]
username = ${USERNAME}
mining_key = ${MINING_KEY}
intensity = ${INTENSITY}
threads = ${THREADS}
start_diff = ${DIFFICULTY}
donate = 0
identifier = ${RIG}
algorithm = DUCO-S1
language = ${LANGUAGE}
debug = n
soc_timeout = ${SOC_TIMEOUT}
report_sec = ${REPORT_SEC}
raspi_leds = ${RASPI_LEDS}
raspi_cpu_iot = ${RASPI_CPU_IOT}
discord_rp = ${DISCORD_RP}" > "Duino-Coin PC Miner 3.4/Settings.cfg"

# Start the miner
python3 PC_Miner.py