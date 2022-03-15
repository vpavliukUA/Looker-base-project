view: ext_mobile_events {
  sql_table_name: "BASE"."EXT_MOBILE_EVENTS"
    ;;

  dimension: action_taken {
    type: string
    sql: ${TABLE}."ACTION_TAKEN" ;;
  }

  dimension: action_value {
    type: string
    sql: ${TABLE}."ACTION_VALUE" ;;
  }

  dimension: app_key {
    type: string
    sql: ${TABLE}."APP_KEY" ;;
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

  dimension: campaign_name {
    type: string
    sql: ${TABLE}."CAMPAIGN_NAME" ;;
  }

  dimension: content_id {
    type: string
    sql: ${TABLE}."CONTENT_ID" ;;
  }

  dimension: custom_data1 {
    type: string
    sql: ${TABLE}."CUSTOM_DATA1" ;;
  }

  dimension: custom_data2 {
    type: string
    sql: ${TABLE}."CUSTOM_DATA2" ;;
  }

  dimension: custom_data3 {
    type: string
    sql: ${TABLE}."CUSTOM_DATA3" ;;
  }

  dimension: custom_data_other {
    type: string
    sql: ${TABLE}."CUSTOM_DATA_OTHER" ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}."DAY" ;;
  }

  dimension: device_id {
    type: string
    sql: ${TABLE}."DEVICE_ID" ;;
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

  dimension: push_certified {
    type: string
    sql: ${TABLE}."PUSH_CERTIFIED" ;;
  }

  dimension: push_origin {
    type: string
    sql: ${TABLE}."PUSH_ORIGIN" ;;
  }

  dimension: push_state {
    type: string
    sql: ${TABLE}."PUSH_STATE" ;;
  }

  dimension: push_type {
    type: string
    sql: ${TABLE}."PUSH_TYPE" ;;
  }

  dimension: schema_version {
    type: string
    sql: ${TABLE}."SCHEMA_VERSION" ;;
  }

  dimension_group: session_end {
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
    sql: ${TABLE}."SESSION_END_TIME" ;;
  }

  dimension_group: session_start {
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
    sql: ${TABLE}."SESSION_START_TIME" ;;
  }

  dimension: subscription_id {
    type: string
    sql: ${TABLE}."SUBSCRIPTION_ID" ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}."VALUE" ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}."YEAR" ;;
  }

  measure: count {
    type: count
    drill_fields: [campaign_name]
  }
}
