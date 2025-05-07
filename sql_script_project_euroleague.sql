USE project_sql;

SELECT * FROM players_euroleague;

# 1. High-usage shooters are less efficient
	# Goal: See if higher 3PA ratio correlates with lower TS%.

SELECT
  CASE
    WHEN 3PA_ratio < 20 THEN 'Low 3PA'
    WHEN 3PA_ratio BETWEEN 20 AND 40 THEN 'Medium 3PA'
    WHEN 3PA_ratio BETWEEN 40 AND 100 THEN 'High 3PA'
  END AS 3PA_ratio_group,
  COUNT(*) AS player_count,
  ROUND(AVG(true_shooting_pct), 2) AS avg_ts_percentage
FROM players_euroleague
GROUP BY 3PA_ratio_group
ORDER BY 3PA_ratio_group;

# 2. Ball security is rewarded with more minutes
	# Goal: Explore if players with better AST/TO get more minutes.

SELECT
  CASE
    WHEN assist_to_ratio < 1 THEN 'Low AST/TO'
    WHEN assist_to_ratio BETWEEN 1 AND 2 THEN 'Medium AST/TO'
    ELSE 'High AST/TO'
  END AS assist_to_group,
  COUNT(*) AS player_count,
  ROUND(AVG(mins), 2) AS avg_minutes
FROM players_euroleague
GROUP BY assist_to_group
ORDER BY assist_to_group;


# 3. Long careers = more efficiency
	#Goal: Correlate career longevity (games played) with efficiency metrics.
    
SELECT
  CASE
    WHEN games_played < 100 THEN '0–99'
    WHEN games_played BETWEEN 100 AND 150 THEN '100–150'
    WHEN games_played BETWEEN 150 AND 200 THEN '150–200'
    WHEN games_played BETWEEN 200 AND 250 THEN '200–250'
    ELSE '250+'
  END AS games_group,
  COUNT(*) AS player_count,
  ROUND(AVG(true_shooting_pct), 2) AS avg_ts,
  ROUND(AVG(assist_to_ratio), 2) AS avg_ast_to,
  ROUND(AVG(rebound_pct), 2) AS avg_reb_pct
FROM players_euroleague
GROUP BY games_group
ORDER BY games_group;
   



