# SQL query

The SQL used in the analysis, as a standalone file. The same query runs inside the notebook ([`marketing_ab_test_analysis.ipynb`](../marketing_ab_test_analysis.ipynb), section 5.1), where you can see its result.

| File | Business question | SQL techniques |
|---|---|---|
| [`01_conversion_by_group.sql`](01_conversion_by_group.sql) | How often did each test group convert? | aggregation, `GROUP BY` |

## The `users` table

The cleaned dataset (588,101 rows) loaded into SQLite, one row per user.

| Column | Meaning |
|---|---|
| `user_id` | unique user identifier |
| `group` | `ad` (saw the ads) or `psa` (saw a public service announcement) |
| `converted` | 1 = bought the product, 0 = did not |
| `total_ads` | number of ads or PSAs the user saw |
| `most_ads_day` | day of the week the user saw the most ads |
| `most_ads_hour` | hour of the day (0–23) the user saw the most ads |
