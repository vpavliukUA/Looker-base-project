connection: "sub_test_connection"

# include all the views
include: "/views/**/*.view"

explore: databasechangelog {}

explore: databasechangeloglock {}

explore: ext_email_events {}

explore: ext_mobile_events {}

explore: ext_sms_events {}
