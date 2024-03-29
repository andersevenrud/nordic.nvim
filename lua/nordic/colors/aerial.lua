-- 'stevearc/aerial.nvim'
return function(c, s, cs)
    return {
        -- These are in sync (roughly) with the colors in navic.lua
        { 'AerialArrayIcon', c.yellow },
        { 'AerialBooleanIcon', c.orange, c.none, s.bold },
        { 'AerialClassIcon', c.yellow },
        { 'AerialConstantIcon', c.orange },
        { 'AerialConstructorIcon', c.yellow },
        { 'AerialEnumIcon', c.yellow },
        { 'AerialEnumMemberIcon', c.cyan },
        { 'AerialEventIcon', c.purple },
        { 'AerialFieldIcon', c.blue, c.none, s.italic },
        { 'AerialFileIcon', c.blue },
        { 'AerialFunctionIcon', c.purple, c.none, s.italic },
        { 'AerialInterfaceIcon', c.yellow },
        { 'AerialKeyIcon', c.purple },
        { 'AerialMethodIcon', c.purple, c.none, s.italic },
        { 'AerialModuleIcon', c.blue, c.none, s.italic },
        { 'AerialNamespaceIcon', c.yellow, c.none, s.italic },
        { 'AerialNullIcon', c.red },
        { 'AerialNumberIcon', c.orange },
        { 'AerialObjectIcon', c.orange },
        { 'AerialOperatorIcon', c.purple },
        { 'AerialPackageIcon', c.orange, c.none, s.italic },
        { 'AerialPropertyIcon', c.blue, c.none, s.italic },
        { 'AerialStringIcon', c.green, c.none, s.italic },
        { 'AerialStructIcon', c.yellow },
        { 'AerialTypeParameterIcon', c.yellow },
        { 'AerialVariableIcon', c.blue, c.none, s.bold },

        -- Text next to the icon.
        { 'AerialArray', c.white },
        { 'AerialBoolean', c.white },
        { 'AerialClass', c.white },
        { 'AerialConstructor', c.white },
        { 'AerialEnum', c.white },
        { 'AerialEnumMember', c.white },
        { 'AerialEvent', c.white },
        { 'AerialField', c.white, c.none, s.italic },
        { 'AerialFile', c.white },
        { 'AerialFunction', c.white, c.none, s.italic },
        { 'AerialInterface', c.white },
        { 'AerialKey', c.white },
        { 'AerialMethod', c.white, c.none, s.italic },
        { 'AerialModule', c.white, c.none, s.italic },
        { 'AerialNamespace', c.white, c.none, s.italic },
        { 'AerialNull', c.white },
        { 'AerialNumber', c.white },
        { 'AerialObject', c.white },
        { 'AerialOperator', c.white },
        { 'AerialPackage', c.white, c.none, s.italic },
        { 'AerialProperty', c.white, c.none, s.italic },
        { 'AerialString', c.white, c.none, s.italic },
        { 'AerialStruct', c.white },
        { 'AerialTypeParameter', c.white },
        { 'AerialVariable', c.white, c.none, s.bold },
        { 'AerialConstant', c.white },

        { 'AerialLine', c.none, c.bright_black },
        { 'AerialLineNC', c.none, c.gray },
    }
end
