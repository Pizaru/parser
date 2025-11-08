











local a a={cache={},load=function(b)if not a.cache[b]then a.cache[b]={c=a[b]()}
end return a.cache[b].c end}do function a.a()local b={}b.__index=b local c,d=
TweenInfo.new(),workspace.GetServerTimeNow b.ClassNameStrings={DataModel='game',
Workspace='workspace',Stats='stats()',GlobalSettings='settings()',
PluginManagerInterface='PluginManager()',UserSettings='UserSettings()',
DebuggerManager='DebuggerManager()'}b.Formats={CFrame=function(e,f)local g=e:
FormatVectorValues(f,false,true)return`CFrame.new({g})`end,Vector3=function(e,f)
local g=e:FormatVectorValues(f)return`Vector3.new({g})`end,Vector2=function(e,f)
local g=e:FormatVectorValues(f,true)return`Vector2.new({g})`end,Vector2int16=
function(e,f)local g=e:FormatVectorValues(f,true)return`Vector2int16.new({g})`
end,Vector3int16=function(e,f)local g=e:FormatVectorValues(f)return`Vector3int16.new({
g})`end,Color3=function(e,f)return`Color3.fromRGB({f.R*255}, {f.G*255}, {f.B*255
})`end,NumberRange=function(e,f)local g,h=e:Format(f.Min),e:Format(f.Max)return`NumberRange.new({
g}, {h})`end,NumberSequenceKeypoint=function(e,f)return`NumberSequenceKeypoint.new({
f.Time}, {f.Value}, {f.Envelope})`end,ColorSequenceKeypoint=function(e,f)return`ColorSequenceKeypoint.new({
f.Time}, {f.Value})`end,PathWaypoint=function(e,f)local g,h=e:Format(f.Position)
,`Enum.PathWaypointAction.{f.Action.Name}`return`PathWaypoint.new({g}, {h}, "{f.
Label}")`end,PhysicalProperties=function(e,f)return`PhysicalProperties.new("{f.
Density}, {f.Friction}, {f.Elasticity}, {f.FrictionWeight}, {f.ElasticityWeight}`
end,Ray=function(e,f)local g,h=e:Format(f.Origin),e:Format(f.Direction)return`Ray.new({
g}, {h})`end,UDim2=function(e,f)return`UDim2.new({f.X.Scale},{f.X.Offset},{f.Y.
Scale},{f.Y.Offset})`end,UDim=function(e,f)return`UDim2.new({f.Scale},{f.Offset})`
end,BrickColor=function(e,f)return`BrickColor.new("{f.Name}")`end,buffer=
function(e,f)local g=buffer.tostring(f)g=e:Format(g)return`buffer.fromstring({g}) --[[{
f}]]`end,DateTime=function(e,f)return`DateTime.fromUnixTimestampMillis({f.
UnixTimestampMillis})`end,Font=function(e,f)local g=e:Format(f.Family)return`Font.new({
g}, {f.Weight}, {f.Style.Name})`end,Enum=`%*`,string=function(e,f)local g,h=e:
MakePrintable(f),`"%*"`local i,j=g:find'%[%[=*[[]',g:find'[\n\r]'if not i and j
then h='[[%*]]'end return h:format(g)end,number=`%*`,TweenInfo=function(e,f)
local g,h,i,j,k=`Enum.EasingStyle.{f.EasingStyle.Name}`,`Enum.EasingDirection.{f
.EasingDirection.Name}`,f.EasingStyle==c.EasingStyle,f.EasingDirection==c.
EasingDirection,math.round(f.Time*100)/100 if i and j then return`TweenInfo.new({
k})`end return`TweenInfo.new({k}, {g}, {h})`end,boolean=`%*`,Instance=function(e
,f)local g,h=e.Parser:MakePathString{Object=f}return g,h>2 end,['function']=
function(e,f)local g,h=debug.info(f,'n'),''if#g<=0 then h=`{f}`else h=`function {
g}`end return`function() end --[[{h}]]`end,table=function(e,f,g)local h=g.Indent
or 0 local i=e.Parser:ParseTableIntoString{NoBrackets=false,Indent=h+1,Table=f}
return i end,RBXScriptSignal=function(e,f,g)local h=tostring(f):match' (%a+)'
return`nil --[[Signal: {h}]]`end}function b.IsPrintable(e,f,g)if g then return f:
match'[%g ]'end return f:match'[\n\r%g ]'end function b.MakePrintable(e,f,g)local
h=f:gsub('"','\\"')return h:gsub('.',function(i)if g then i=i:gsub('\n','\\n')i=
i:gsub('\r','\\r')end if e:IsPrintable(i,g)then return i end return`\\{i:
byte()}`end)end function b.FormatVectorValues(e,f,...)local g={e:RoundVector(f,
...)}return table.concat(g,', ')end function b.RoundValues(e,f)local g={}for h,i
in next,f do local j=math.round(i)table.insert(g,j)end return g end function b.
RoundVector(e,f,g,h)local i,j,k=f.X,f.Y,not g and f.Z or 0 if h then local l={f:
GetComponents()}return unpack(e:RoundValues(l))end return math.round(i),math.
round(j),not g and math.round(k)or nil end function b.GetServerTimeNow(e)return
d(workspace)end function b.MakeReplacements(e,f)local g=tick()-(f or tick())local
h,i,j=math.round(e:GetServerTimeNow()-g),math.round(workspace.
DistributedGameTime-g),{}local k=function(k,l)if typeof(k)=='number'then j[-k]=`-{
l}`end j[k]=l end k(Vector2.one,'Vector2.one')k(Vector2.zero,'Vector2.zero')k(
Vector3.one,'Vector3.one')k(Vector3.zero,'Vector3.zero')k(math.huge,'math.huge')
k(math.pi,'math.pi')k(workspace.Gravity,'workspace.Gravity')k(workspace.
AirDensity,'workspace.AirDensity')k(workspace.CurrentCamera.CFrame,
'workspace.CurrentCamera.CFrame')k(i,'workspace.DistributedGameTime')k(h,
'workspace:GetServerTimeNow()')return j end function b.SetValueSwaps(e,f)e.
ValueSwaps=f end function b.FindStringIntSwap(e,f)local g=tonumber(f)if not g then
return end local h=e:FindValueSwap(g)return h end function b.FindValueSwap(e,f)
local g=e.ValueSwaps local h=g[f]if h then return h end if typeof(f)==
'string'then local i=e:FindStringIntSwap(f)if i then return`tostring({i})`end
end local i=typeof(f)=='number'if not i then return end local j=math.round(f)
return g[j]end function b.NeedsBrackets(e,f)if not f then return end if typeof(f)
~='string'then return true end return not f:match'^[%a_][%w_]*$'end function b.
MakeName(e,f)local g=e:ObjectToString(f)g=g:gsub('[./ #%@$%\u{a3}+-()\n\r]','')
g=e:MakePrintable(g,true)if e:NeedsBrackets(g)then return end if#g<1 or#g>
30 then return end return g end function b.new(e)local f={}local g=setmetatable(
f,b)g.ValueSwaps=g:MakeReplacements()return g end function b.Format(e,f,g)local h,
i=e.Formats,e.Variables g=g or{}local j,k=e.NoVariables or g.
NoVariables,e:FindValueSwap(f)if k then return k end local l=typeof(f)local m
,n=(h[l])if typeof(f)=='Instance'then n=e:MakeName(f)end if typeof(m)==
'function'then local o,p=m(e,f,g)if p and not j then o=i:MakeVariable{Name=n,
Lookup=f,Value=o}end return o end if not m then return`{f} --[[{l} not supported]]`
end return m:format(f)end function b.ObjectToString(e,f)local g,h,i=e.Swaps,
e.IndexFunc,e.ClassNameStrings local j,k=h(f,'Name'),h(f,'ClassName')local
l=i[k]local m=l or j m=e:MakePrintable(m,true)if g then local n=g[f]if n then
m=n.String end end return m end return b end function a.b()local b={}b.__index=b
function GetDictSize(c)local d=0 for e in next,c do d+=1 end return d end
function b.new(c)local d={}return setmetatable(d,b)end function b.FormatTableKey
(c,d)local e=c.Formatter if typeof(d)~='string'then return end local f=e:
NeedsBrackets(d)if f then return end return`{d} = `end function b.
ParseTableIntoString(c,d)local e,f,g,h=c.Formatter,d.Indent or 0,d.Table,d.
NoBrackets local i,j=GetDictSize(g),true if i==0 then return h and''or'{}',i,
true end local k,l,m=string.rep('\t',f),`{not h and'{'or''}\n`,0 for n,o in next
,g do m+=1 local p,q,r,s=e:Format(o,d),n==m,'',''if typeof(n)~='number'or not q
then s=c:FormatTableKey(n)j=false if not s then local t=e:Format(n,d)s=`[{t}] = `
end end if m<i then r=','end l..=`{k}\t{s}{p}{r}\n`end l..=`{k}{not h and'}'or''
}`return l,i,j end function b.MakeVariableCodeLine(c,d)local e,f,g=d.Name,d.Value,
d.Comment local h,i=`local {e} = {f}`,g and` -- {g}`or''return`{h}{i}`end
function b.MakeVariableCodeLines(c,d)local e,f=c.Variables,d.Variables local g,
h=e:OrderVariables(f),''for i,j in g do local k=c:MakeVariableCodeLine(j)h..=
`{k}\n`end return h end function b.MakeVariableCode(c,d,e)local f=c.Variables
local g,h,i=f.VariablesDict,'',0 for j,k in next,d do local l=false repeat local
m=g[k]if not m then l=true break end i+=1 h..=i>1 and'\n'or''h..=e and''or`-- {k
}\n`h..=c:MakeVariableCodeLines(m)l=true until true if not l then break end
end return h end function b.MakePathString(c,d)local e,f,g,h,i,j,k=c.Variables,
c.Formatter,d.Object,d.Parents,c.NoVariables or d.NoVariables,'',0 h=h or
e:MakeParentsTable(g,i)local l=function(l,m)local n=e:IsService(l)if not n then
return end local o=`game:GetService("{n}")`if i then j=o return true end local p
=e:MakeVariable{Name=n,Class='Services',Value=o}j=p return true end for m,n in
next,h do local o=false repeat local p,q=f:ObjectToString(n),e:GetVariable(n)if
q and not i then p=q.Name end if m==2 and h[1]==game then if l(n,p)then o=true
break end end local r,s=f:NeedsBrackets(p),m>1 and'.'or''k+=1 j..=r and`["{p}"]`
or`{s}{p}`o=true until true if not o then break end end return j,k end return b
end function a.c()local b={VariableBase='Jit'}b.__index=b local c,d,e=getfenv(1)
,{Instance=function(c,d)local e,f,g=c.Parser,c.Formatter,c:BulkCollectParents(d)
local h=c:FindDuplicates(g)for i,j in next,h do local k=false repeat local l,m=e
:MakePathString{Object=j}if m<3 then k=true break end local n=f:MakeName(j)c:
MakeVariable{Lookup=j,Name=n,Value=l}k=true until true if not k then break end
end end},function(c,d)for e,f in next,d do table.insert(c,f)end end function b.
new(f)local g={VariablesDict={},VariableLookup={},InstanceQueue={},VariableNames
={},NoNameCount=0}return setmetatable(g,b)end function b.GetNoNameCount(f)return
f.NoNameCount end function b.AddVariableToClass(f,g,h)local i=h.Value local j=h
.Lookup or i g.VariableCount+=1 local k,l=g.VariableCount,g.Variables h.Order=k
l[j]=h end function b.GetClassDict(f,g)local h=f.VariablesDict local i=h[g]if i
then return i end i={VariableCount=0,Variables={}}h[g]=i return i end function b.
IsGlobal(f,g)local h=f.IndexFunc if typeof(g)=='Instance'then local i=h(g,
'Name')return c[i]==g end return c[g]and g or false end function b.IsService(f,g)
local h=f.IndexFunc local i=h(g,'ClassName')local j=pcall(function()return
game:GetService(i)end)return j and i or false end function b.
IncreaseNameUseCount(f,g)if not g then return 0 end local h=f.VariableNames
local i=h[g]if not i then i=0 h[g]=i end h[g]+=1 return i end function b.
IncreaseNoNameCount(f)f.NoNameCount+=1 return f.NoNameCount end function b.
CheckName(f,g)local h=g.Name local i=f:IncreaseNameUseCount(h)if h then if i<=0
then return h else return`{h}{i}`end end local j,k=f:IncreaseNoNameCount(),
f.VariableBase return k:format(j)end function b.GetVariable(f,g)local h=f.
VariableLookup return h[g]end function b.OrderVariables(f,g)local h={}for i,j in
next,g do local k=j.Order table.insert(h,k,j)end return h end function b.
MakeVariable(f,g)local h,i,j=f.VariableLookup,f.InstanceQueue,g.Value local
k,l=g.Lookup or j,g.Class or'Variables'local m=f:GetVariable(k)if m then
return m.Name end local n=f:IsGlobal(j)if n then return n end if not g.Name
and typeof(j)=='Instance'then i[j]=g end local o=f:CheckName(g)g.Name=o local
p=f:GetClassDict(l)f:AddVariableToClass(p,g)h[k]=g return o end function b.
CollectTableItems(f,g,h)local i=function(i)local j=typeof(i)if j=='table'then
f:CollectTableItems(i,h)return end h(i)end for j,k in next,g do i(j)i(k)end
end function b.FindDuplicates(f,g)local h,i={},{}for j,k in next,g do local l=
false repeat local m=i[k]if m==1 then i[k]=2 table.insert(h,k)l=true break end i
[k]=1 l=true until true if not l then break end end table.clear(i)return h end
function b.CollectTableTypes(f,g,h)local i={}local j=function(j)local k=typeof(j)
if not table.find(h,k)then return end local l=i[k]if not l then l={}i[k]=l end
table.insert(l,j)end f:CollectTableItems(g,j)return i end function b.
MakeParentsTable(f,g,h)local i,j,k=f.IndexFunc,f.Swaps,f.Variables h=f
.NoVariables or h local l,m={},g while true do local n=m m=i(m,'Parent')if m==
game and f:IsGlobal(n)then m=nil end if j then local o=j[n]if o and o.
NextParent then m=o.NextParent end end local o=k:GetVariable(n)if not h and o
and m then m=nil end table.insert(l,1,n)if not m then break end end return l end
function b.BulkCollectParents(f,g)local h,i={},{}for j,k in next,g do local l=
false repeat if typeof(k)~='Instance'then l=true break end local m=f:
MakeParentsTable(k)e(h,m)i[k]=m l=true until true if not l then break end end
return h,i end function b.PrerenderVariables(f,g,h)if f.NoVariables then return
end local i=f:CollectTableTypes(g,h)for j,k in next,i do local l=d[j]if l
then l(f,k)end end end return b end end local b,c={Version='1.0.8',Author=
'Depso',License='GNU-GPLv3',Repository=
'https://github.com/depthso/Roblox-parser',ImportUrl=
[[https://raw.githubusercontent.com/depthso/Roblox-parser/refs/heads/main]],
Modules={Formatter=a.load'a',Parser=a.load'b',Variables=a.load'c'}},function(b,c
)for d,e in next,c do b[d]=e end end function b.New(d,e)local f=d.Modules local
g={Variables=f.Variables.new(),Formatter=f.Formatter.new(),Parser=f.Parser.new()
}if e then c(g,e)end for h,i in next,g do local j=false repeat if typeof(i)~=
'table'then j=true break end if i.new then c(i,g)end j=true until true if not j
then break end end return g end return b