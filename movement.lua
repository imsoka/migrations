local MAX_BLOCKS = 20

local function isBlocksValid(blocks)
    if blocks == nil then
        return false
    end
    if "number" ~= type(blocks) then
        return false
    end
    if blocks > MAX_BLOCKS then
        return false
    end

    return true
end

local function goForward(blocks)
    if !isBlocksValid then
        return false
    end

    for i = 0, blocks, 1 do
        if !turtle.forward() then
            return false
        end
    end

    return true
end

local function goBack(blocks)
    if !isBlocksValid(blocks) then
        return false
    end

    for i = 0, blocks, 1 do
        if !turtle.back() then
            return false
        end
    end

    return true
end

local function goLeft(blocks)
    if !isBlocksValid(blocks) then
        return false
    end

    for i = 0, blocks, 1 do
        if !turtle.left() then
            return false
        end
    end

    return true
end

local function goRight(blocks)
    if isBlocksValid(blocks) then
        return false
    end

    for i = 0, blocks, 1 do
        if !turtle.right() then
            return false
        end
    end

    return true
end