# Initialize time display scoreboards
scoreboard objectives add playtime_ticks dummy "Playtime (Ticks)"
scoreboard objectives add playtime_seconds dummy "Playtime (Seconds)"
scoreboard objectives add playtime_minutes dummy "Playtime (Minutes)"
scoreboard objectives add playtime_hours dummy "Playtime (Hours)"
scoreboard objectives add playtime_days dummy "Playtime (Days)"


# Initialize internal scoreboards
scoreboard objectives add playtime_timer trigger

# Finished loading
tellraw @a {"text":"Loaded GelbEinhalb Playtime","color":"yellow"}
