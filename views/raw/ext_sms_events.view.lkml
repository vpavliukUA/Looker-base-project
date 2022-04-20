view: ext_sms_events {
  sql_table_name: "BASE"."EXT_SMS_EVENTS"
    ;;

  dimension: audience_id {
    type: string
    sql: ${TABLE}."AUDIENCE_ID" ;;
  }

  dimension: bucket_general {
    type: string
    sql: ${TABLE}."BUCKET_GENERAL" ;;
  }

  dimension: carrier_name {
    type: string
    sql: ${TABLE}."CARRIER_NAME" ;;
  }

  dimension: consent_action {
    type: string
    sql: ${TABLE}."CONSENT_ACTION" ;;
  }

  dimension: consent_id {
    type: string
    sql: ${TABLE}."CONSENT_ID" ;;
  }

  dimension: customer_id {
    type: string
    sql: ${TABLE}."CUSTOMER_ID" ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}."DAY" ;;
  }

  dimension: delivery_status {
    type: string
    sql: ${TABLE}."DELIVERY_STATUS" ;;
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

  dimension: message_parts {
    type: string
    sql: ${TABLE}."MESSAGE_PARTS" ;;
  }

  dimension: mo_message_body {
    type: string
    sql: ${TABLE}."MO_MESSAGE_BODY" ;;
  }

  dimension: mo_mobile_number {
    type: string
    sql: ${TABLE}."MO_MOBILE_NUMBER" ;;
  }

  dimension: mobile_number {
    type: string
    sql: ${TABLE}."MOBILE_NUMBER" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}."MONTH" ;;
  }

  dimension: schema_version {
    type: string
    sql: ${TABLE}."SCHEMA_VERSION" ;;
  }

  dimension: sms_code {
    type: string
    sql: ${TABLE}."SMS_CODE" ;;
  }

  dimension: sms_provider {
    type: string
    sql: ${TABLE}."SMS_PROVIDER" ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}."SOURCE" ;;
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

  measure: count {
    type: count
    drill_fields: [carrier_name]
  }
}
