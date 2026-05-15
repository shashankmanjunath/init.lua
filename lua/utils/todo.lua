local M = {}

local function get_yesterday_date()
	local today = os.date("*t")
	local yesterday = os.time({ year = today.year, month = today.month, day = today.day - 1 })
	return os.date("%Y-%m-%d", yesterday)
end

local function format_date_for_header(date_str)
	local year, month, day = date_str:match("(%d+)-(%d+)-(%d+)")
	return string.format("%d/%d", tonumber(month), tonumber(day))
end

local function read_previous_day_todos(home)
	local yesterday = get_yesterday_date()
	local prev_note_path = home .. "/" .. yesterday .. ".md"

	local file = io.open(prev_note_path, "r")
	if not file then
		return {}
	end

	local todos = {}
	local in_todo_section = false

	for line in file:lines() do
		if line:match("^# To Do") then
			in_todo_section = true
		elseif line:match("^# ") and in_todo_section then
			break
		elseif in_todo_section and line:match("- %[ %]") then
			table.insert(todos, line)
		end
	end

	file:close()
	return todos
end

local function populate_daily_note_todos(home)
	local todos = read_previous_day_todos(home)
	if #todos == 0 then
		return
	end

	local today = os.date("%Y-%m-%d")
	local formatted_date = format_date_for_header(today)
	local header = "# To Do " .. formatted_date

	local content = { header, "" }
	for _, todo in ipairs(todos) do
		table.insert(content, todo)
	end
	table.insert(content, "")

	vim.api.nvim_buf_set_lines(0, 0, 0, false, content)
end

M.populate_daily_note_todos = populate_daily_note_todos

return M
