suppressPackageStartupMessages(library(data.table))

#' load.UMI.count.from.file
#' 
#' This function loads the UMI count matrix from the standard .csv file
#' @keywords load umi file
#' @export
#' @examples 
#' load.umi.count.from.file
load.umi.count.from.file = function(csv_path)
{
    message("Loading UMI counts...")
    cell_counts = fread(csv_path, header=T)
    setnames(cell_counts, old="V1", new="Gene")
}

cell_counts = load.umi.count.from.file("/home/shacar/Desktop/RAGE/correlation/LN_pearson_correlation/UMI_count_LN.csv")

