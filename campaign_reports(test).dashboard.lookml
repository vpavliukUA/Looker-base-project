- dashboard: default_reports_test
  title: Default reports (test)
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Click count by time of day
    name: Click count by time of day
    model: painkillers_test_base_project
    explore: ext_email_events
    type: looker_donut_multiples
    fields: [ext_email_events.event_date, ext_email_events.parts_of_day, ext_email_events.click_count_unique]
    pivots: [ext_email_events.parts_of_day]
    fill_fields: [ext_email_events.event_date, ext_email_events.parts_of_day]
    filters:
      ext_email_events.event_date: 3 days
    sorts: [ext_email_events.event_date desc, ext_email_events.parts_of_day]
    limit: 500
    show_value_labels: true
    font_size: 11
    charts_across: 1
    hide_legend: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    listen: {}
    row: 0
    col: 0
    width: 6
    height: 13
  - title: Sent and unsubscribes vs days
    name: Sent and unsubscribes vs days
    model: painkillers_test_base_project
    explore: ext_email_events
    type: looker_line
    fields: [ext_email_events.event_date, ext_email_events.send_count, ext_email_events.unsubscribe_count]
    fill_fields: [ext_email_events.event_date]
    filters:
      ext_email_events.event_date: 10 days
    sorts: [ext_email_events.event_date desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: ext_email_events.send_count,
            id: ext_email_events.send_count, name: Sent}, {axisId: ext_email_events.unsubscribe_count,
            id: ext_email_events.unsubscribe_count, name: Unsubscribers}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Day
    hide_legend: false
    series_types:
      ext_email_events.send_count: column
    series_colors:
      ext_email_events.send_count: "#079c98"
      ext_email_events.unsubscribe_count: "#80868B"
    series_labels:
      ext_email_events.send_count: Sent
      ext_email_events.unsubscribe_count: Unsubscribers
    defaults_version: 1
    listen: {}
    row: 0
    col: 6
    width: 18
    height: 6
  - title: Overall optimization metrics
    name: Overall optimization metrics
    model: painkillers_test_base_project
    explore: ext_email_events
    type: looker_column
    fields: [ext_email_events.event_date, ext_email_events.click_to_open_ratio_unique,
      ext_email_events.open_rate_unique]
    fill_fields: [ext_email_events.event_date]
    filters:
      ext_email_events.event_date: 3 days
    sorts: [ext_email_events.event_date]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: right
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: ext_email_events.click_to_open_ratio_unique,
            id: ext_email_events.click_to_open_ratio_unique, name: Click-to-open ratio
              (unique)}, {axisId: ext_email_events.open_rate_unique, id: ext_email_events.open_rate_unique,
            name: Open rate (unique)}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: ''
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_types: {}
    series_colors:
      ext_email_events.click_to_open_ratio_unique: "#079c98"
      ext_email_events.open_rate_unique: "#1A73E8"
    series_labels:
      ext_email_events.click_to_open_ratio_unique: Click-to-open ratio (unique)
      ext_email_events.open_rate_unique: Open rate (unique)
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    row: 6
    col: 6
    width: 18
    height: 5
