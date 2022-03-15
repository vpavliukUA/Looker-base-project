view: ext_email_events {
  sql_table_name: "BASE"."EXT_EMAIL_EVENTS"
    ;;

  dimension: asset_id {
    type: string
    sql: ${TABLE}."ASSET_ID" ;;
  }

  dimension: audience_id {
    type: string
    sql: ${TABLE}."AUDIENCE_ID" ;;
  }

  dimension: bucket_general {
    type: string
    sql: ${TABLE}."BUCKET_GENERAL" ;;
  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}."CAMPAIGN_ID" ;;
  }

  dimension: communication_type {
    type: string
    sql: ${TABLE}."COMMUNICATION_TYPE" ;;
  }

  dimension: conversion_action {
    type: string
    sql: ${TABLE}."CONVERSION_ACTION" ;;
  }

  dimension: conversion_amount {
    type: string
    sql: ${TABLE}."CONVERSION_AMOUNT" ;;
  }

  dimension: conversion_detail {
    type: string
    sql: ${TABLE}."CONVERSION_DETAIL" ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}."DAY" ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}."EMAIL_ADDRESS" ;;
  }

  dimension: event_category {
    type: string
    sql: ${TABLE}."EVENT_CATEGORY" ;;
  }

  dimension_group: event {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."EVENT_DATE" ;;
  }

  dimension: event_details {
    type: string
    sql: ${TABLE}."EVENT_DETAILS" ;;
  }

  dimension: event_id {
    type: string
    sql: ${TABLE}."EVENT_ID" ;;
  }

  dimension: event_type {
    type: string
    sql: ${TABLE}."EVENT_TYPE" ;;
  }

  dimension: journey_orchestration_id {
    type: string
    sql: ${TABLE}."JOURNEY_ORCHESTRATION_ID" ;;
  }

  dimension: link_id {
    type: string
    sql: ${TABLE}."LINK_ID" ;;
  }

  dimension: message_body_type {
    type: string
    sql: ${TABLE}."MESSAGE_BODY_TYPE" ;;
  }

  dimension_group: message {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."MESSAGE_DATE" ;;
  }

  dimension: message_group_id {
    type: string
    sql: ${TABLE}."MESSAGE_GROUP_ID" ;;
  }

  dimension: message_id {
    type: string
    sql: ${TABLE}."MESSAGE_ID" ;;
  }

  dimension: message_occurrence_id {
    type: string
    sql: ${TABLE}."MESSAGE_OCCURRENCE_ID" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}."MONTH" ;;
  }

  dimension: program_id {
    type: string
    sql: ${TABLE}."PROGRAM_ID" ;;
  }

  dimension: ref_url {
    type: string
    sql: ${TABLE}."REF_URL" ;;
  }

  dimension: schema_version {
    type: string
    sql: ${TABLE}."SCHEMA_VERSION" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."SOURCE" ;;
  }

  dimension: subject_line {
    type: string
    sql: ${TABLE}."SUBJECT_LINE" ;;
  }

  dimension: subscription_id {
    type: string
    sql: ${TABLE}."SUBSCRIPTION_ID" ;;
  }

  dimension: user_agent {
    type: string
    sql: ${TABLE}."USER_AGENT" ;;
  }

  dimension: user_ip {
    type: string
    sql: ${TABLE}."USER_IP" ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}."VALUE" ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}."YEAR" ;;
  }

  # custom dimensions and measures

  ################### bounce aggregates

  measure: bounce_count {
    type: count
    filters: [event_type: "emailBounce"]
  }

  measure: bounce_count_soft {
    type: count
    filters: [event_type: "emailBounce", event_details: "S"]
  }

  measure: bounce_count_hard {
    type: count
    filters: [event_type: "emailBounce", event_details: "H"]
  }

  measure: bounce_rate {
    type: number
    sql: ${bounce_count} /  NULLIF(${send_count},0) ;;
  }

  measure: bounce_rate_soft {
    type: number
    sql: ${bounce_count_soft} /  NULLIF(${send_count},0) ;;
  }

  measure: bounce_rate_hard {
    type: number
    sql: ${bounce_count_hard} /  NULLIF(${send_count},0) ;;
  }

  ################### delivery aggregates

  measure: delivery_count {
    type: number
    sql: ${send_count} - ${bounce_count} ;;
  }

  measure: delivery_rate {
    type: number
    sql: ${delivery_count} / NULLIF(${send_count}, 0) ;;
    value_format_name: "percent_1"
  }


  dimension: event_hour_of_day {
    type: number
    sql: hour(${event_time}::timestamp);;
  }

  dimension: parts_of_day {
    case: {
      when: {
        sql: ${event_hour_of_day} >= 0 AND ${event_hour_of_day} < 12 ;;
        label: "Morning"
      }
      when: {
        sql: ${event_hour_of_day} >= 12 AND ${event_hour_of_day} < 18 ;;
        label: "Afternoon"
      }
      else: "Evening"
    }
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: send_count {
    type: count
    filters: [event_type: "emailSend"]
  }

  measure: open_count {
    type: count
    filters: [event_type: "emailOpen"]
  }

  measure: open_count_unique {
    type: count_distinct
    sql: ${customer_id} ;;
    filters: [event_type: "emailOpen"]
  }

  measure: open_rate_unique {
    type: number
    sql: ${open_count_unique} / NULLIF(${delivery_count}, 0) ;;
    value_format_name: "percent_1"
  }

  measure: click_count_unique {
    type: count_distinct
    sql: ${customer_id}  ;;
    filters: [event_type: "emailClick"]
    drill_fields: [message_id, message_group_id]
  }

  measure: click_rate_unique {
    type: number
    sql: ${click_count_unique} / NULLIF(${delivery_count}, 0) ;;
    value_format_name: "percent_1"
  }

  measure: click_to_open_ratio_unique {
    type: number
    sql: ${click_count_unique} / NULLIF(${open_count_unique}, 0) ;;
    value_format_name: "percent_1"
  }

  ################### unsubscripe aggregates

  measure: unsubscribe_count {
    type: count_distinct
    sql: ${customer_id}  ;;
    filters: [event_type: "emailOptOut"]
  }

  measure: unsubscribe_rate {
    type: number
    sql: ${unsubscribe_count} / NULLIF(${delivery_count}, 0) ;;
    value_format_name: "percent_1"
  }
}
