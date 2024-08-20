view: onsite_reports {
  sql_table_name: `sources.onsite_reports` ;;

  dimension: ad_spend {
    type: number
    sql: ${TABLE}.adSpend ;;
  }
  dimension: adsspend_estimation {
    type: number
    sql: ${TABLE}.adsspend_estimation ;;
  }
  dimension: adsspend_today {
    type: number
    sql: ${TABLE}.adsspend_today ;;
  }
  dimension: advertiser_internal_id {
    type: number
    sql: ${TABLE}.advertiser_internal_id ;;
  }
  dimension: budget_amount {
    type: number
    sql: ${TABLE}.budgetAmount ;;
  }
  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaignId ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaignName ;;
  }
  dimension: charge_type {
    type: string
    sql: ${TABLE}.chargeType ;;
  }
  dimension: cid {
    type: string
    sql: ${TABLE}.CID ;;
  }
  dimension: clicks_charged {
    type: number
    sql: ${TABLE}.clicksCharged ;;
  }
  dimension: cpc {
    type: number
    sql: ${TABLE}.CPC ;;
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
  dimension: day {
    type: number
    sql: ${TABLE}.Day ;;
  }
  dimension: diff_date {
    type: number
    sql: ${TABLE}.diff_date ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.endDate ;;
  }
  dimension: image_url {
    type: string
    sql: ${TABLE}.imageURL ;;
  }
  dimension: impressions_total {
    type: number
    sql: ${TABLE}.impressionsTotal ;;
  }
  dimension: product_id {
    type: number
    sql: ${TABLE}.productId ;;
  }
  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }
  dimension: provider {
    type: string
    sql: ${TABLE}.provider ;;
  }
  dimension: purchases_amount {
    type: number
    sql: ${TABLE}.purchasesAmount ;;
  }
  dimension: purchases_quantity {
    type: number
    sql: ${TABLE}.purchasesQuantity ;;
  }
  dimension: retailer {
    type: string
    sql: ${TABLE}.retailer ;;
  }
  dimension: roas {
    type: number
    sql: ${TABLE}.ROAS ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.startDate ;;
  }
  dimension: target_roas {
    type: number
    sql: ${TABLE}.targetRoas ;;
  }
  dimension: vendor_id {
    type: string
    sql: ${TABLE}.vendorId ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name, campaign_name]
  }
}
