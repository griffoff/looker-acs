connection: "snowflake_prod"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: american_community_survey_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: american_community_survey_default_datagroup
