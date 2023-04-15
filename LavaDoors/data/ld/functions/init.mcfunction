# Init globals scoreboard
scoreboard objectives add value dummy

# Make a check every 17 ticks
schedule function ld:check 17t replace
