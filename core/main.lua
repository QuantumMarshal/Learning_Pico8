function _init()
end 

function _update()
    if btnp(0) then
        log_info("Left")
    elseif btnp(1) then
        log_info("Right")
    elseif btnp(2) then
        log_info("Up")
    elseif btnp(3) then
        log_info("Down")
    elseif btnp(4) then
        log_info("Z")
    elseif btnp(5) then
        log_info("X")
    end
end

function _draw()
    cls()
end