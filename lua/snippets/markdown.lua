local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

return {
	s("notes", {
		t({ "---" }),
		t({ "", "title: " }),
		i(1),
		t({ "", "tags:", "" }),
		t({ "  " }),
		i(2),
		t({ "", "---" }),
	}),
}
