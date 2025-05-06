# EUROLEAGUE PLAYER EFFICIENCY ANALYSIS

This project explores key trends in Euroleague basketball player performance, using player-level career statistics to examine how usage, efficiency, and other metrics relate to playing time and career longevity. The analysis is structured around three core hypotheses, with the goal of uncovering patterns that may inform how we interpret player value and performance in a European professional basketball context.

## Data Description

The dataset was extracted from the Euroleague API and includes statistics for all players who have competed in the Euroleague. Each entry contains:
- Player Name
- Total Games Played
- Average Minutes Per Game
- Average True Shooting Percentage (TS%)
- Average Rebound Percentage
- Three-Point Attempt Ratio (3PA Ratio)
- Assist-to-Turnover Ratio (AST/TO)

## Observations on the Dataset

 ### Strengths:
 - Comprehensive coverage of Euroleague players over multiple seasons.
 - Career averages offer a normalized view of player performance.

 ### Challenges:
 - No season-level granularity—only career averages.
 - Missing values for some players with limited appearances.
 - No contextual team or era data (e.g., pace, coaching, system).

## Hypothesis

1. High usage 3 point shooter are not less efficient
2. Players with higher AST/TO ratio are rewarded with more playing minutes
3. Players with longer careers in the Euroleague are more efficient

## Methodology

- Data extraction: Used the Euroleague API to retrieve player-level data.
- Data cleaning:
- EDA
- Visualizations
- Hypothesis testing

## Final conclusions

The analysis suggests that Euroleague players who take a higher proportion of three-point shots tend to be slightly less efficient overall, indicating a trade-off between volume and shot quality over 25 years of Euroleague history. Players with better assist-to-turnover ratios generally receive more playing time, highlighting the value coaches place on ball security. Additionally, while the correlation is modest, higher efficiency metrics like TS% and AST/TO ratio are linked to longer careers, suggesting that consistent, smart play contributes to player longevity. These findings offer a statistical foundation for deeper scouting, coaching decisions, or comparisons with other leagues.
