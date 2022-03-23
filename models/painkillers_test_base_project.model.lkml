connection: "acoustic_dev01"

# include all the views
include: "/views/**/*.view"
include: "/views/*.view"

explore: databasechangelog {}

explore: databasechangeloglock {}

explore: ext_email_events {}

explore: ext_mobile_events {}

explore: ext_sms_events {}
