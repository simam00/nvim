local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("mod", {
    t({"module "}), i(1, "name"), t({";"}),
    t({"", "  "}), i(2),
    t({"", "endmodule"})
  }),

  s("typedef", {
    t({"typedef struct packed {", "  "}), i(1, "// fields"),
    t({"", "} "}), i(2, "name"), t({";"})
  }),
}
