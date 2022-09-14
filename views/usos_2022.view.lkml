# The name of this view in Looker is "Usos 2022"
view: usos_2022 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `SUBE.Usos_2022`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amba" in Explore.

  dimension: amba {
    type: string
    sql: ${TABLE}.AMBA ;;
  }

  dimension: cantidad {
    type: number
    sql: ${TABLE}.CANTIDAD ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cantidad {
    type: sum
    sql: ${cantidad} ;;
  }

  measure: average_cantidad {
    type: average
    sql: ${cantidad} ;;
  }

  dimension: dato_preliminar {
    type: string
    sql: ${TABLE}.DATO_PRELIMINAR ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: dia_transporte {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DIA_TRANSPORTE ;;
  }

  dimension: jurisdiccion {
    type: string
    sql: ${TABLE}.JURISDICCION ;;
  }

  dimension: linea {
    type: string
    sql: ${TABLE}.LINEA ;;
  }

  dimension: municipio {
    type: string
    sql: ${TABLE}.MUNICIPIO ;;
  }

  dimension: nombre_empresa {
    type: string
    sql: ${TABLE}.NOMBRE_EMPRESA ;;
  }

  dimension: provincia {
    type: string
    sql: ${TABLE}.PROVINCIA ;;
  }

  dimension: tipo_transporte {
    type: string
    sql: ${TABLE}.TIPO_TRANSPORTE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
