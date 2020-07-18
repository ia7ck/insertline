function insertLineBelow(bp)
  bp:EndOfLine()
  bp:InsertNewline()
end

function insertLineAbove(bp)
  bp.Cursor:Up()
  insertLineBelow(bp)
end

local config = import("micro/config")
function init()
  config.MakeCommand("insertlinebelow", insertLineBelow, config.NoComplete)
  config.MakeCommand("insertlineabove", insertLineAbove, config.NoComplete)

  config.TryBindKey("Alt-Enter", "lua:insertline.insertLineBelow", false)
  -- BindKey("CtrlSpace", "lua:insertline.insertLineAbove")
end
