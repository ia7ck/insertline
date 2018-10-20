function insertLineBelow()
  local v = CurView()
  v:EndOfLine(false)
  v:InsertNewline(false)
end

function insertLineAbove()
  local v = CurView()
  v.Cursor:Up()
  insertLineBelow()
end

MakeCommand("insertlinebelow", "insertline.insertLineBelow")
MakeCommand("insertlineabove", "insertline.insertLineAbove")

BindKey("Alt-Enter", "insertline.insertLineBelow")
-- BindKey("CtrlSpace", "insertline.insertLineAbove")
