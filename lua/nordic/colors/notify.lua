-- 'rcarriga/nvim-notify'
return function(c, s, cs)
    return {
        { { 'NotifyERRORBorder', 'NotifyERRORIcon', 'NotifyERRORTitle' }, c.red },
        { { 'NotifyWARNBorder', 'NotifyWARNIcon', 'NotifyWARNTitle' }, c.orange },
        { { 'NotifyINFOBorder', 'NotifyINFOIcon', 'NotifyINFOTitle' }, c.green },
        { { 'NotifyDEBUGBorder', 'NotifyDEBUGIcon', 'NotifyDEBUGTitle' }, c.blue },
        { { 'NotifyTRACEBorder', 'NotifyTRACEIcon', 'NotifyTRACETitle' }, c.purple },
    }
end
