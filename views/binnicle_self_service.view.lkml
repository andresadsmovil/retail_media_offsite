view: binnicle_self_service {
  sql_table_name: `sources.binnicle_self_service` ;;

  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }
  dimension: account_type {
    type: string
    sql: ${TABLE}.ACCOUNT_TYPE ;;
  }
  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.advertiser_name ;;
  }
  dimension: campaign_budget {
    type: number
    sql: ${TABLE}.campaign_budget ;;
  }
  dimension: campaign_day {
    type: number
    sql: ${TABLE}.campaign_day ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_in_flight_days {
    type: number
    sql: ${TABLE}.Campaign_in_flight_days ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: campaign_remaining_days {
    type: number
    sql: ${TABLE}.Campaign_remaining_days ;;
  }
  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.COUNTRY ;;
  }
  dimension: cpc {
    type: number
    sql: ${TABLE}.CPC ;;
  }
  dimension: cpm {
    type: number
    sql: ${TABLE}.CPM ;;
  }
  dimension: cpv {
    type: number
    sql: ${TABLE}.CPV ;;
  }
  dimension: creative_name {
    type: string
    sql: ${TABLE}.creative_name ;;
  }
  dimension: ctr {
    type: number
    sql: ${TABLE}.CTR ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension_group: end_date_campaign {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.end_date_campaign ;;
  }
  dimension_group: end_date_line {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.end_date_line ;;
  }
  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }
  dimension: line_item_budget {
    type: number
    sql: ${TABLE}.line_item_budget ;;
  }
  dimension: line_item_id {
    type: number
    sql: ${TABLE}.line_item_id ;;
  }
  dimension: line_item_spend {
    type: number
    sql: ${TABLE}.line_item_spend ;;
  }
  dimension: margin {
    type: number
    sql: ${TABLE}.MARGIN ;;
  }
  dimension: size {
    type: string
    sql: ${TABLE}.size ;;
  }
  dimension: spend {
    type: number
    sql: ${TABLE}.spend ;;
  }
  dimension: spend_usd {
    type: number
    sql: ${TABLE}.spend_usd ;;
  }
  dimension_group: star_date_campaign {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.star_date_campaign ;;
  }
  dimension_group: star_date_line {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.star_date_line ;;
  }
  dimension: video_completes {
    type: number
    sql: ${TABLE}.video_completes ;;
  }
  measure: count {
    type: count
    drill_fields: [creative_name, campaign_name, account_name, advertiser_name]
  }
}
