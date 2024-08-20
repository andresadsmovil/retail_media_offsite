view: audience_farmatodo_dictionary {
  sql_table_name: `sources.audience_farmatodo_dictionary` ;;

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }
  dimension: macro_category {
    type: string
    sql: ${TABLE}.macro_category ;;
  }
  dimension: retail_category {
    type: string
    sql: ${TABLE}.retail_category ;;
  }
  dimension: segment_id {
    type: number
    sql: ${TABLE}.segment_id ;;
  }
  dimension: segment_name {
    type: string
    sql: ${TABLE}.segment_name ;;
  }
  dimension: subcategory {
    type: string
    sql: ${TABLE}.subcategory ;;
  }
  measure: count {
    type: count
    drill_fields: [segment_name]
  }
}
