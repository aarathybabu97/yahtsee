generate_group_id <- function(.data, group) {
  .data %>%
    tibble::as_tibble() %>%
    dplyr::group_by({{ group }}) %>%
    dplyr::transmute(".{{ group }}_id" := dplyr::cur_group_id()) %>%
    dplyr::ungroup({{ group }}) %>%
    dplyr::select(-{{ group }})
}
