#' Create temporary directory for RSQLite
#'
#' @param root_dir path to create temporary directory.
#' @param rsqlite_tmp_folder name of temporary folder.
#' @param run boolean specifying whether to create temporary folder
#' @return NULL.
#'
#' @examples
#' create_rsqlite_tmp(run=TRUE)
#' @export
#'
create_rsqlite_tmp <- function(root_dir=getwd(), rsqlite_tmp_folder = "rsqlite_tmp", run=FALSE){

  if (!run) return(NULL)

  rsqlite_tmp_path <- paste0(root_dir, "/", rsqlite_tmp_folder)

  if (file.exists(rsqlite_tmp_path)){
    print("remaking RSQLite tmp folder")
    unlink(rsqlite_tmp_path, recursive = TRUE)
  }
  dir.create(rsqlite_tmp_path, showWarnings = FALSE)

  Sys.setenv(TMP = rsqlite_tmp_path)
  Sys.setenv(TEMP = rsqlite_tmp_path)
  Sys.setenv(SQLITE_TMPDIR = rsqlite_tmp_path)
  Sys.setenv(TMPDIR = rsqlite_tmp_path)

}
