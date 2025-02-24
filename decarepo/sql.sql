/* -------------------------------------------------------
# --- L O N G E V I T Y  C A L C U L A T I O N -----------
# --------------------------------------------------------
# Searches the repo for all activity by a contributor, and
# calculates the days between their first & last contribution.
# This excludes those that step in 'one-time' such as starring 
# or forking or leaving a comment and never returning.
# This excludes devs that work on other projects, i.e. 
# activity is only traced from a single repo
#---------------------------------------
# view multiple author's days active
#---------------------------------------
*/

WITH contributor_activity AS (
    SELECT
        MIN(created_at) AS earliest_seen,
        MAX(created_at) AS last_seen,
        actor_login
    FROM github_events
    WHERE repo_name = 'bitcoin/bitcoin'
    GROUP BY actor_login
)
SELECT
    actor_login,
    earliest_seen,
    last_seen,
    dateDiff('day', toDateTime(earliest_seen), toDateTime(last_seen)) AS days_active
FROM contributor_activity
WHERE dateDiff('day', toDateTime(earliest_seen), toDateTime(last_seen)) > 0
ORDER BY days_active DESC
LIMIT 100;