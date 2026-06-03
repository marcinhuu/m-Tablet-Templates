local TABLET_RESOURCE = 'm-Tablet'
local APP_ID = 'template_react_example'

local APP_CONFIG = {
    id = APP_ID,
    name = 'Template React App',
    icon = 'fa-solid fa-layer-group',
    color = '#7c3aed',
    enabled = true,
    canRemove = true,
    storeApp = true,
    category = 'tools',
    allowed = { 'all' },
    description = 'Simple React custom app template.',
    resourceName = GetCurrentResourceName(),
}

local function registerTemplateApp()
    if GetResourceState(TABLET_RESOURCE) ~= 'started' then
        print(('[m-Tablet-React-Template] %s is not started, app not registered.'):format(TABLET_RESOURCE))
        return
    end

    exports[TABLET_RESOURCE]:RegisterApp(APP_CONFIG)

    exports[TABLET_RESOURCE]:RegisterCallback(APP_ID, 'onOpen', function(_, cb)
        cb({ success = true })
    end)

    exports[TABLET_RESOURCE]:RegisterCallback(APP_ID, 'onClose', function(_, cb)
        cb({ success = true })
    end)
end

local function unregisterTemplateApp()
    if GetResourceState(TABLET_RESOURCE) ~= 'started' then
        return
    end

    exports[TABLET_RESOURCE]:UnregisterApp(APP_ID)
end

AddEventHandler('onClientResourceStart', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        registerTemplateApp()
    elseif resourceName == TABLET_RESOURCE then
        registerTemplateApp()
    end
end)

AddEventHandler('onClientResourceStop', function(resourceName)
    if resourceName == GetCurrentResourceName() then
        unregisterTemplateApp()
    end
end)
