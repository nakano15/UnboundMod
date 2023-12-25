require "/scripts/util.lua"
require "/scripts/vec2.lua"
require "/quests/scripts/portraits.lua"
require "/quests/scripts/questutil.lua"

function questComplete()
  player.upgradeShip(config.getParameter("shipUpgrade"))
  player.playCinematic(config.getParameter("shipUpgradeCinema"))
 end
 
function update(dt)
  quest.setCanTurnIn(true)
  quest.setObjectiveList({{config.getParameter("turnInDescription"), false}})
end