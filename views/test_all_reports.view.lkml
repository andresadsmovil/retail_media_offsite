view: test_all_reports {
  sql_table_name: `sources.test_all_reports` ;;

  dimension: account_currency {
    type: string
    sql: ${TABLE}.account_currency ;;
  }
  dimension: account_id {
    type: number
    sql: ${TABLE}.account_id ;;
  }
  dimension: account_name {
    type: string
    sql: ${TABLE}.account_name ;;
  }
  dimension: advertiser_id {
    type: number
    sql: ${TABLE}.advertiser_id ;;
  }
  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.advertiser_name ;;
  }
  dimension: app_bundle {
    type: string
    sql: ${TABLE}.app_bundle ;;
  }
  dimension: app_name {
    type: string
    sql: ${TABLE}.app_name ;;
  }
  dimension: campaign_id {
    type: number
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension: click_thru_rate {
    type: number
    sql: ${TABLE}.click_thru_rate ;;
  }
  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }
  dimension: conversion_rate {
    type: number
    sql: ${TABLE}.conversion_rate ;;
  }
  dimension: conversions {
    type: number
    sql: ${TABLE}.conversions ;;
  }
  dimension: cost_per_click_account_currency {
    type: number
    sql: ${TABLE}.cost_per_click_account_currency ;;
  }
  dimension: cost_per_completed_video_account_currency {
    type: number
    sql: ${TABLE}.cost_per_completed_video_account_currency ;;
  }
  dimension: cost_per_conversion_account_currency {
    type: number
    sql: ${TABLE}.cost_per_conversion_account_currency ;;
  }
  dimension: cpm_account_currency {
    type: number
    sql: ${TABLE}.cpm_account_currency ;;
  }
  dimension: creative_id {
    type: number
    sql: ${TABLE}.creative_id ;;
  }
  dimension: creative_name {
    type: string
    sql: ${TABLE}.creative_name ;;
  }
  dimension: creative_size {
    type: string
    sql: ${TABLE}.creative_size ;;
  }
  dimension_group: date {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }
  dimension_group: date_utc {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_utc ;;
  }
  dimension: day_of_week {
    type: number
    sql: ${TABLE}.day_of_week ;;
  }
  dimension: deal_id {
    type: string
    sql: ${TABLE}.deal_id ;;
  }
  dimension: device_type {
    type: string
    sql: ${TABLE}.device_type ;;
  }
  dimension: domain {
    type: string
    sql: ${TABLE}.domain ;;
  }
  dimension: environment_type {
    type: string
    sql: ${TABLE}.environment_type ;;
  }
  dimension: imp {
    type: number
    sql: ${TABLE}.imp ;;
  }
  dimension: inventory_source {
    type: string
    sql: ${TABLE}.inventory_source ;;
  }
  dimension: line_item_id {
    type: number
    sql: ${TABLE}.line_item_id ;;
  }
  dimension: line_item_name {
    type: string
    sql: ${TABLE}.line_item_name ;;
  }
  dimension: media_cost_account_currency {
    type: number
    sql: ${TABLE}.media_cost_account_currency ;;
  }
  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }
  dimension: platform_browser {
    type: string
    sql: ${TABLE}.platform_browser ;;
  }
  dimension: platform_device_type {
    type: string
    sql: ${TABLE}.platform_device_type ;;
  }
  dimension: platform_fee_account_currency {
    type: number
    sql: ${TABLE}.platform_fee_account_currency ;;
  }
  dimension: platform_fee_rate {
    type: number
    sql: ${TABLE}.platform_fee_rate ;;
  }
  dimension: platform_os {
    type: string
    sql: ${TABLE}.platform_os ;;
  }
  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }
  dimension: spend_account_currency {
    type: number
    sql: ${TABLE}.spend_account_currency ;;
  }
  dimension: tag_id {
    type: number
    sql: ${TABLE}.tag_id ;;
  }
  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }
  dimension: video_completes {
    type: number
    sql: ${TABLE}.video_completes ;;
  }
  dimension: video_midpoints {
    type: number
    sql: ${TABLE}.video_midpoints ;;
  }
  dimension: video_plays {
    type: number
    sql: ${TABLE}.video_plays ;;
  }
  dimension: video_q1s {
    type: number
    sql: ${TABLE}.video_q1s ;;
  }
  dimension: video_q3s {
    type: number
    sql: ${TABLE}.video_q3s ;;
  }
  dimension: view_rate {
    type: number
    sql: ${TABLE}.view_rate ;;
  }
  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	creative_name,
	line_item_name,
	campaign_name,
	account_name,
	app_name,
	advertiser_name
	]
  }

}
