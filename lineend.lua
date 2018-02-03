VERSION = "1.0.0"

if GetOption("lineend-autosave") == nil then
	AddOption("lineend-autosave", false)
end

function dos2unix()
	local v = CurView()
	for i = 1,v.Buf.NumLines - 1 do
		local line = v.Buf:Line(i)
		local rep = line:gsub("\r\n$", "\n")
		v.Buf:Replace(Loc(0, i), Loc(#line, i), rep)
	end
	SetLocalOption("fileformat", "unix", v)
	if GetOption("lineend-autosave") then
		v:Save(false)
	end
end

function unix2dos()
    local v = CurView()
	for i = 1,v.Buf.NumLines - 1 do
		local line = v.Buf:Line(i)
		local rep = line:gsub("\r\n$", "\n")
		v.Buf:Replace(Loc(0, i), Loc(#line, i), rep)
	end
	SetLocalOption("fileformat", "dos", v)
	if GetOption("lineend-autosave") then
		v:Save(false)
	end
end

MakeCommand("dos2unix", "lineend.dos2unix", 0)
MakeCommand("unix2dos", "lineend.unix2dos", 0)