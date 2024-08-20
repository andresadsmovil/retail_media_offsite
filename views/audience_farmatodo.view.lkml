view: audience_farmatodo {
  sql_table_name: `sources.audience_farmatodo` ;;

  dimension: audiencia {
    type: string
    sql: ${TABLE}.Audiencia ;;
  }
  dimension: segment_id {
    type: number
    sql: ${TABLE}.segment_id ;;
  }
  measure: count {
    type: count
  }
}
