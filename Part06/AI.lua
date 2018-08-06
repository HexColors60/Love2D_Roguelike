Object = require 'Libraries/classic/classic'

BasicMonsterAI = Object:extend()

function BasicMonsterAI:new()
   
end

function BasicMonsterAI:take_turn( target, gameMap, entities)
    print( self.owner.name.."還在想什麼時候輪到自己行動…" ) 
    local monster = self.owner
    if gameMap.tiles[monster.x][monster.y].is_in_fov then
        if monster:distance_to( target ) >= 2 then
            monster:move_towards( target.x, target.y, gameMap, entities )
        elseif target.fighter.hp > 0 then
            print( "攻擊!" )
        end
        
        
    end
    
end


