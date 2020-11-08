@echo off
@echo cobdbデータベースをセットアップします。
sqlcmd -S .\SQLEXPRESS -E -i .\cobdb.sql
