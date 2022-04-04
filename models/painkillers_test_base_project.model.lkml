connection: "painkillers_datalake01"

## include all the views
include: "/views/**/*.view"
include: "/views/*.view"
include: "/**/*.dashboard"

explore: databasechangelog {}

explore: databasechangeloglock {}

explore: ext_email_events {
  always_filter: {
    filters: [ext_email_events.subscription_id: "b005b14cb4049f51ea186089e52d8a6278ad9882"]
  }
}

explore: ext_mobile_events {}

explore: ext_sms_events {}
