
#' Title
#'
#' @param df
#' @param group_var
#'
#' @return
#' @export
#'
#' @examples
#'
#'
dedup<-function(df, group_var){
  group_var<-dplyr::enquo(group_var)

  df<-df%>%
    dplyr::group_by(!!group_var)%>%
    dplyr::mutate(rank=dplyr::row_number(!!group_var))%>%
    dplyr::filter(rank==1)%>%
    dplyr::select(-rank)
}
