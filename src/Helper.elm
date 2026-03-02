module Helper exposing (..)


type GradeStatus
    = Approved
    | Failed
    | Pending


categoricalGrade : List Float -> List GradeStatus
categoricalGrade calificaciones =
    List.map comprobarCalificacion calificaciones


comprobarCalificacion : Float -> GradeStatus
comprobarCalificacion cal =
    if cal < 0 then
        Pending

    else if cal >= 7 then
        Approved

    else
        Failed



--2.0--


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction estado =
    case estado of
        OnTime ->
            "Esperar"

        Cancelled ->
            "Pedir reembolso"

        Delayed ->
            "Esperar"

        Boarding ->
            "Buscar boleto"


airportAction : List AirplaneStatus -> List String
airportAction estados =
    List.map airplaneScheduleAction estados
