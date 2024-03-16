token <- '65D809BF1931BC88DB387DA88DEAF142'
UploadingRespitory <- function(FileNAME,token,url, folderID){
formData <- list("token"=token,
                 action='import',
                 content='fileRepository',
                 folder_id=folderID,
                 returnFormat='json',
                 file=upload_file(FileNAME)
)
response <- httr::POST(url, 
                       body = formData, encode = "multipart")
result <- httr::content(response)
}

UploadingRespitory('Data_as_save_locally.csv',token = 'XXXXXXXXXXXXXXX','https://redcap.YYYYYYYYYY.edu/api/','3')
