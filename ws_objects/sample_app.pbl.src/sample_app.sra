$PBExportHeader$sample_app.sra
$PBExportComments$Generated Application Object
forward
global type sample_app from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type sample_app from application
string appname = "sample_app"
end type
global sample_app sample_app

on sample_app.create
appname="sample_app"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on sample_app.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open(w_main)
end event

