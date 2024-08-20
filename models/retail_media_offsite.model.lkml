connection: "farmatodo_sources"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: retail_media_offsite_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}


explore: retail_media_offsite {}
