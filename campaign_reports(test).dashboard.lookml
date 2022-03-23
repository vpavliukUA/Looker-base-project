- dashboard: campaign_reports_from_snowflake_data
  title: Campaign reports from Snowflake data
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  elements:
  - title: Click count by time of day
    name: Click count by time of day
    model: painkillers_test_base_project
    explore: ext_email_events
    type: looker_donut_multiples
    fields: [ext_email_events.click_count_unique, ext_email_events.parts_of_day, ext_email_events.event_date]
    pivots: [ext_email_events.parts_of_day]
    fill_fields: [ext_email_events.event_date, ext_email_events.parts_of_day]
    sorts: [ext_email_events.click_count_unique desc 0, ext_email_events.event_date,
      ext_email_events.parts_of_day]
    limit: 500
    show_value_labels: false
    font_size: 12
    charts_across: 1
    value_labels: legend
    label_type: labPer
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 0
    col: 0
    width: 6
    height: 15
  - title: Overall engagement KPIs
    name: Overall engagement KPIs
    model: painkillers_test_base_project
    explore: ext_email_events
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [ext_email_events.open_rate_unique, ext_email_events.click_rate_unique,
      ext_email_events.click_to_open_ratio_unique]
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '16'
    orientation: auto
    style_ext_email_events.open_rate_unique: "#5A5D77"
    show_title_ext_email_events.open_rate_unique: true
    title_override_ext_email_events.open_rate_unique: Open rate (unique)
    title_placement_ext_email_events.open_rate_unique: below
    value_format_ext_email_events.open_rate_unique: ''
    style_ext_email_events.click_rate_unique: "#5A5D77"
    show_title_ext_email_events.click_rate_unique: true
    title_override_ext_email_events.click_rate_unique: Click rate (unique)
    title_placement_ext_email_events.click_rate_unique: below
    value_format_ext_email_events.click_rate_unique: ''
    show_comparison_ext_email_events.click_rate_unique: false
    style_ext_email_events.click_to_open_ratio_unique: "#5A5D77"
    show_title_ext_email_events.click_to_open_ratio_unique: true
    title_override_ext_email_events.click_to_open_ratio_unique: Click-to-open rate
      (unique)
    title_placement_ext_email_events.click_to_open_ratio_unique: below
    value_format_ext_email_events.click_to_open_ratio_unique: ''
    show_comparison_ext_email_events.click_to_open_ratio_unique: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    font_size: 12
    charts_across: 1
    value_labels: legend
    label_type: labPer
    defaults_version: 0
    series_types: {}
    show_null_points: true
    interpolation: linear
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen: {}
    row: 0
    col: 6
    width: 18
    height: 4
  - title: Sent and unsubscribers vs day
    name: Sent and unsubscribers vs day
    model: painkillers_test_base_project
    explore: ext_email_events
    type: looker_line
    fields: [ext_email_events.event_date, ext_email_events.send_count, ext_email_events.unsubscribe_count]
    fill_fields: [ext_email_events.event_date]
    sorts: [ext_email_events.event_date desc]
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
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application: undefined
    y_axes: [{label: '', orientation: left, series: [{axisId: ext_email_events.send_count,
            id: ext_email_events.send_count, name: Sent}, {axisId: ext_email_events.unsubscribe_count,
            id: ext_email_events.unsubscribe_count, name: Unsubscribers}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_types:
      ext_email_events.send_count: column
    series_colors:
      ext_email_events.unsubscribe_count: "#121a3f"
    series_labels:
      ext_email_events.send_count: Sent
      ext_email_events.unsubscribe_count: Unsubscribers
    swap_axes: false
    discontinuous_nulls: false
    defaults_version: 1
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    groupBars: true
    labelSize: 10pt
    showLegend: true
    ordering: none
    show_null_labels: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    up_color: false
    down_color: false
    total_color: false
    listen: {}
    row: 4
    col: 6
    width: 18
    height: 5
  - title: Overall optimization metrics
    name: Overall optimization metrics
    model: painkillers_test_base_project
    explore: ext_email_events
    type: looker_column
    fields: [ext_email_events.click_to_open_ratio_unique, ext_email_events.open_rate_unique,
      ext_email_events.event_date]
    fill_fields: [ext_email_events.event_date]
    sorts: [ext_email_events.event_date desc]
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
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_types: {}
    series_labels:
      ext_email_events.click_to_open_ratio_unique: Click-to-open ratio (unique)
      ext_email_events.open_rate_unique: Open rate (unique)
    column_spacing_ratio: 0.1
    column_group_spacing_ratio:
    show_dropoff: false
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 9
    col: 6
    width: 18
    height: 6
