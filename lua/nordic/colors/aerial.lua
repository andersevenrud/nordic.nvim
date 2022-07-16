-- 'stevearc/aerial.nvim'
return function(c)
    local identifiers = {
        { 'AerialArrayIcon' },
        { 'AerialBooleanIcon' },
        { 'AerialEnumMemberIcon' },
        { 'AerialEventIcon' },
        { 'AerialFieldIcon' },
        { 'AerialFileIcon' },
        { 'AerialKeyIcon' },
        { 'AerialNullIcon' },
        { 'AerialNumberIcon' },
        { 'AerialObjectIcon' },
        { 'AerialOperatorIcon' },
        { 'AerialPropertyIcon' },
        { 'AerialStringIcon' },
        { 'AerialTypeParameterIcon' },
        { 'AerialVariableIcon' },
    }

    local types = {
        { 'AerialClassIcon' },
        { 'AerialEnumIcon' },
        { 'AerialInterfaceIcon' },
        { 'AerialStructIcon' },
    }

    local constants = {
        { 'AerialConstantIcon' },
    }

    local specials = {
        { 'AerialConstructorIcon' },
    }

    local functions = {
        { 'AerialFunctionIcon' },
        { 'AerialMethodIcon' },
    }

    local includes = {
        { 'AerialModuleIcon' },
        { 'AerialNamespaceIcon' },
        { 'AerialPackageIcon' },
    }

    return {
        { 'AerialLine', c.none, c.bright_black },
        { identifiers, c.dark_white },
        { types, c.bright_cyan },
        { constants, c.white },
        { specials, c.yellow },
        { functions, c.green },
        { includes, c.intense_blue },
    }
end
