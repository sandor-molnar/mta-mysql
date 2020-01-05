# Adatbázis kapcsolódás MTA:SA játékszerverhez
Segítségével csatlakozhatunk adatbázishoz.  
## Telepítés
- Töltsük le a forrást, majd másoljuk a `resources` mappába.
- Nyissuk meg a `db.s.lua` fájlt, és írjuk át az adatbázis adatokat a saját adatainkra.
- `refresh` majd `start mta-mysql`
## Exportok
- DBGetDatabase: vissza adja a kapcsolódási adatokat
- DBQuery: dbQuery(**sql**)
- DBGetHandler: Vissza adja a kapcsolat handlert
- DBPollQuery: dbPoll(dbQuery(**sql**), **time**)
- DBExec: dbExec(**sql**)
- DBFree: dbFree(**query**)
- DBEscape: [Ehhez hasonló feladatot lát el](https://wiki.multitheftauto.com/wiki/Modules/MTA-MySQL/mysql_escape_string) DBEscape(**string**, **delimeter**)
