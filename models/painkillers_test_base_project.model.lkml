connection: "painkillers_datalake01"

# include all the views
include: "/views/**/*.view"
include: "/views/*.view"
include: "/**/*.dashboard"

explore: databasechangelog {}

explore: databasechangeloglock {}

explore: ext_email_events {}

explore: ext_mobile_events {}

explore: ext_sms_events {}
