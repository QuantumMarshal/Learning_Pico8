--[[
    Logger module for logging messages with different log levels.
    This module provides functions to log messages with timestamps and 
    different log levels (DEBUG, RELEASE).

    The pattern of the log message is:
    [HH:MM:SS] [LOG_LEVEL] message
        where HH:MM:SS is the current time in hours, minutes, and seconds.
        LOG_LEVEL is the level of the log message (DEBUG, INFO, WARNING, ERROR).
        message is the actual log message.

]]

LOG_LEVELS = {DEBUG = "DEBUG", RELEASE = "RELEASE"}

LOG_LEVEL = LOG_LEVELS.DEBUG

local function get_timestamp()
    local t = time()
    local h = flr(t / 3600) % 24
    local m = flr(t / 60) % 60
    local s = flr(t) % 60

    return "["..pad(h)..":"..pad(m)..":"..pad(s).."]"
end

local function log_message(message, level, overwrite)
    printh(get_timestamp() .. " [" .. level .. "] " .. message, "log.txt", overwrite)
end

function log_trace(message)
    if LOG_LEVEL == LOG_LEVELS.DEBUG then
        log_message(message, "TRACE", false)
    end
end

function log_debug(message, overwrite)
    if LOG_LEVEL == LOG_LEVELS.DEBUG then
        log_message(message, "DEBUG", false)
    end
end

function log_info(message)
    if LOG_LEVEL == LOG_LEVELS.DEBUG then
        log_message(message, "INFO", false)
    end
end

function log_warn(message)
    if LOG_LEVEL == LOG_LEVELS.DEBUG then
        log_message(message, "WARNING", false)
    end
end

function log_error(message)
    if LOG_LEVEL == LOG_LEVELS.DEBUG then
        log_message(message, "ERROR", false)
    end
end