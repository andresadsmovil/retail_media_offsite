view: campaign_events {
  sql_table_name: `sources.campaign_events` ;;

  dimension: advertiser_id {
    type: number
    sql: ${TABLE}.advertiser_id ;;
  }
  dimension: impression_date_s {
    hidden: yes
    sql: ${TABLE}.impression_date_s ;;
  }
  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }
  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
  }
}

view: campaign_events__impression_date_s {

  dimension: campaign_events__impression_date_s {
    type: string
    hidden: yes
    sql: campaign_events__impression_date_s ;;
  }
  dimension: campaign_s {
    hidden: yes
    sql: campaign_s ;;
  }
  dimension_group: impression {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: impression_date ;;
  }
}

view: campaign_events__impression_date_s__campaign_s {

  dimension: campaign_events__impression_date_s__campaign_s {
    type: number
    sql: campaign_events__impression_date_s__campaign_s ;;
  }
}
