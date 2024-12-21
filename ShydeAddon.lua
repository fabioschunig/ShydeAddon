local frame = CreateFrame("Frame");
-- frame:RegisterEvent("PLAYER_LOGIN");
frame:RegisterEvent("VARIABLES_LOADED");
frame:SetScript("OnEvent", function(self, event, ...)
    -- /console turnspeed 290
    -- /run print("Turnspeed is now ", GetCVar("turnspeed"))
    -- /console cameraDistanceMaxZoomFactor 2.6
    C_CVar.SetCVar("TurnSpeed", 350)
    C_CVar.SetCVar("cameraDistanceMaxZoomFactor", 2.6)
end);

-- Função que será chamada quando o addon for carregado
local function OnAddonLoaded(event, addonName)
    if addonName == "MeuAddon" then
        -- Registrar o comando "/meucomando"
        SLASH_MEUCOMANDO1 = "/meucomando"
        SlashCmdList.MEUCOMANDO = function(msg)
            -- Divide a string 'msg' em uma tabela usando espaços como delimitadores
            local parametros = {strsplit(" ", msg)}

            -- Verificar se algum parâmetro foi dado
            if #parametros == 0 then
                print("Você precisa fornecer parâmetros. Exemplo: /meucomando <param1> <param2>")
                return
            end

            local param1 = parametros[1]
            local param2 = parametros[2] or "não fornecido" -- Valor default caso o segundo parâmetro não exista

            -- Executar ações com base nos parâmetros
            print("Comando recebido com os seguintes parâmetros:")
            print("Parâmetro 1: " .. (param1 or "não fornecido"))
            print("Parâmetro 2: " .. (param2 or "não fornecido"))

            -- Exemplo de ação com base nos parâmetros
            if param1 == "olá" then
                print("Olá, jogador! O segundo parâmetro foi: " .. param2)
            elseif param1 == "status" then
                print("Status do addon: ativo")
            else
                print("Comando ou parâmetros não reconhecidos.")
            end
        end
    end
end

-- Registrar o evento ADDON_LOADED
local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", OnAddonLoaded)
