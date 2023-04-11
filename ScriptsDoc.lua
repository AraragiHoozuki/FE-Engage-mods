--#region ScriptBattle

---
---@param person1 string pid
---@param person2 string pid
function CombatStart(person1, person2) end

--#endregion

--#region ScriptGame

---
---@param pid string
---@param iid string
---@param notice? string label for message
function ItemGain(pid, iid, notice) end

---
---@param amount integer
---@param notice? string label for message
function GoldGain(amount, notice) end

---
function ItemPutOffAll() end

---
---@return integer
function DifficultyGet() return 0 end

---
---@return integer
function GameModeGet() return 0 end

---@return integer
function GoldGet() return 0 end

---@param amount integer
function GoldSet(amount) end

---@param pid string
---@return integer
function PersonGetIndex(pid) return 0 end

function JobGetIndex(id) return 0 end
function ItemGetIndex(id) return 0 end
function SkillGetIndex(id) return 0 end

---@param index integer
---@return string
function PersonGetId(index) return "" end
function JobGetId(index) return "" end
function ItemGetId(index) return "" end
function SkillGetId(index) return "" end

---@param arg integer
function ConfigSetBattleScene(arg) end
function ConfigSetSupportScene(arg) end

---@return integer
function ConfigGetSupportScene() return 0 end
function ConfigGetSupportScene() return 0 end

---
---@param id string
function PlayChapterTitle(id) end
--#endregion

--#region ScriptHub

---@param id string cid for chapter
function HubNextChapter(id) end
function HubNextGmap() end

---@param sceneName string
---@param newSceneName string
function HubNextMap(sceneName, newSceneName) end

---@param name string object name
function HubDisableLocator(name) end

---@param id string id without "CID_"
---@return boolean
function HubIsCompleteChapter(id) return true end

---@param cond_type integer
---@return boolean
function HubIsCondition(cond_type) return true end

---@param id string
---@return boolean
function HubIsFacilityComplete(id) return true end

---@param pid string
---@param mid string
function HubChangeTalk(pid, mid) end

function HubIsEnabledLocator() return true end
function CompleteEncountMap() end
function HubIsEncountMap() return true end
--#endregion

--#region ScriptMap
function MindGetForce() return 0 end
function MindGetUnit() return 0 end
function MindGetTargetUnit() return 0 end
function MindGetEventUnit() return 0 end

function CursorGetX() return 0 end
function CursorGetZ() return 0 end

---@param single_arg integer|string index or pid of unit
function CursorSetPos(single_arg) end

---@param x integer
---@param z integer
---@param speed? number camera speed (float) 
function CursorSetPos(x, z, speed) end

---@param visible boolean
function CursorSetVisible(visible) end

function CursorGetDistanceMode() return 0 end

---@param mode integer
function CursorSetDistanceMode(mode) end

---@param scale number float
function CursorSetDistanceMode(scale) end

---@param x integer
---@param z integer
---@return string
function TerrainGet(x, z) return "" end

function TerrainSetBegin() end
function TerrainSetEnd() end
---@param x integer
---@param z integer
---@param tid string
function TerrainFill(x, z, tid) end

---@param x integer
---@param z integer
---@param tid string
function TerrainSet(x, z, tid) end
function TerrainSetOne(x, z, tid) end

---@param x integer
---@param z integer
---@return string
function TerrainGetCost(x, z) return "" end


function MapOverlapSetBegin() end
function MapOverlapSetEnd() end
---@param x integer
---@param z integer
---@param tid string
function MapOverlapSet(x, z, tid) end
function MapOverlapSetOne(x, z, tid) end
---@param x integer
---@param z integer
---@return string tid
function MapOverlapGet(x, z) return "" end
---@param x integer
---@param z integer
function MapOverlapRemove(x, z) end

function MapRangeAddBegin() end
function MapRangeAddEnd() end
---@param x integer
---@param z integer
function MapRangeAdd(x, z) end
function MapRangeClear() end

---@param group string
---@param flag integer
function Dispos(group, flag) end
---@param group string
---@return integer
function DisposGetGroupCount(group) return 0 end
---@param group string
---@param index integer
---@param unknown integer
---@return integer
function DisposGetUnitX(group, index, unknown) return 0 end
function DisposGetUnitZ(group, index, unknown) return 0 end

function MapDamageBegin() end
function MapDamageEnd() end
---@param unit integer|string index or pid
---@param value integer
function MapDamageAdd(unit, value) end

---@param unit1 integer|string index or pid
---@param unit2 integer|string index or pid
function Battle(unit1, unit2) end
---@param unit integer|string index or pid
---@param iid string
function BattleSetAttack(unit, iid) end
---@param unit integer|string index or pid
function BattleAddTarget(unit) end
---@param x integer
---@param z integer
function BattleStart(x, z) end

function MapGetTurn() return 0 end
function MapGetPhase() return 0 end
function MapGetAverageLevel() return 0 end
---@param value integer
function MapGetPosition(value) return 0 end
---@param x number
---@param z number
---@return number
function MapGetHeight(x, z) return 0 end

function MapIsSight() return true end
---@param bool boolean
function MapSetSight(bool) end
function MapIsRecollection() return true end
---@param enable boolean
function WinRuleSetBreakdown(enable) end
---@param enable boolean
function WinRuleSetDestroyBoss(enable) end
---@param number integer
function WinRuleSetEnemyNumberLessThanOrEqualTo(number) end
---@param limit integer
function WinRuleSetEnemyLimitTurn(limit) end
---@param mid string
---@param value? string
function WinRuleSetMID(mid, value) end
---@param mid string
---@param value? string
function LoseRuleSetMID(mid, value) end

---@param name string
---@param x number
---@param z number
---@param rotationY number
function EffectPlay(name, x, z, rotationY) end
function EffectIsPlaying() return true end
---@param name string
---@param x number
---@param z number
---@param rotationY number
function EffectCreate(name, x, z, rotationY) end
---@param name string
---@param x number
---@param z number
function EffectDelete(name, x, z) end

---@param callback function
---@param min integer
---@param max integer
---@param force integer
---@param cond? string game variable name
---@param ... any
function EventEntryTurn(callback, min, max, force, cond, ...) end
function EventEntryTurnAfter(callback, min, max, force, cond, ...) end
function EventEntryTurnEnd(callback, min, max, force, cond, ...) end
function EventEntryArea(callback, x1, z1, x2, z2, force, cond, ...) end
function EventEntryDie(callback, unit, force, cond, ...) end
function EventEntryReviveBefore(callback, unit, force, cond, ...) end
function EventEntryReviveAfter(callback, unit, force, cond, ...) end
function EventEntryFixed(callback, unit, force, cond, ...) end
---comment
---@param callback function
---@param from_person integer|string index or pid
---@param from_force integer
---@param to_person integer|string index or pid
---@param to_force integer
---@param both? boolean default is true
---@param cond? string
---@param ... unknown
function EventEntryTalk(callback, from_person, from_force, to_person, to_force, both, cond, ...) end
function EventEntryBattleBefore(callback, from_person, from_force, to_person, to_force, both, cond, ...) end
function EventEntryBattleTalk(callback, from_person, from_force, to_person, to_force, both, cond, ...) end
function EventEntryBattleAfter(callback, from_person, from_force, to_person, to_force, both, cond, ...) end
function EventEntryEscape(callback, x, z, pid, cond, ...) end
function EventEntryBreakdown(callback, x, z, pid, cond, ...) end
function EventEntryBreakdownEnemy(callback, x, z, pid, cond, ...) end
function EventEntryWaypoint(callback, x, z, cond, ...) end
function EventEntryCommand(callback, x, z, rang, mid, cond, ...) end
--#endregion
