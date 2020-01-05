local db = nil

local mysql = {
	host = '127.0.0.1',
	user = 'root',
	pass = '',
	data = 'mta',
}

addEventHandler("onResourceStart",resourceRoot,function()
	local tempHandler = dbConnect("mysql", "dbname="..mysql.data..";host="..mysql.host, mysql.user, mysql.pass)
	if tempHandler then
		dbExec(tempHandler,"SET NAMES utf8")

		db = Database()
		db:setHandler(tempHandler)
		outputDebugString("[Database] >> Connected <<", 3)
	else
		outputDebugString("[Database] Unable to connect to database.", 3)
	end
end)

local function showError()
	outputDebugString("[Database] No active database connection.")
	return false
end

function DBGetDatabase()
	return mysql.data
end

function DBGetHandler()
	if not db then return showError() end
	return db.handler
end

function DBQuery(sql)
	return db:query(sql)
end

function DBPollQuery(sql)
	return db:query(sql)
end

function DBExec(sql)
	return db:exec(sql)
end

function DBFree(query)
	return db:free(query)
end

function DBPollQuery(sql, time)
	return db:pollQuery(sql, time)
end

function DBEscape(value, delimeter)
	return db:escape(value, delimeter)
end