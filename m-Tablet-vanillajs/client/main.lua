local TABLET_RESOURCE = 'm-Tablet'
local APP_ID = 'template_example'

local APP_CONFIG = {
    id = APP_ID,
    name = 'Template App',
    icon = 'fa-solid fa-layer-group',
    color = '#0ea5e9',
    enabled = true,
    canRemove = true,
    storeApp = true,
    category = 'tools',
    allowed = { 'all' },
    description = 'Simple custom app template.',
    resourceName = GetCurrentResourceName()
}

local function registerTemplateApp()
    if GetResourceState(TABLET_RESOURCE) ~= 'started' then
        print(('[m-Tablet-Template] %s is not started, app not registered.'):format(TABLET_RESOURCE))
        return
    end

    exports[TABLET_RESOURCE]:RegisterApp(APP_CONFIG)

    -- Optional callbacks to show how custom app actions work.
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
