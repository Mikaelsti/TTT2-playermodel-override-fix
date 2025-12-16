if not SERVER then return end

    hook.Add("PlayerSetModel", "DebugCurrentModel", function(ply)
    if not IsValid(ply) then return end
        local currentModel = ply:GetModel()
        ply.defaultModel = currentModel
        end)

    timer.Simple(1, function()
    local plyMeta = FindMetaTable("Player")
    if not plyMeta then return end

        if not plyMeta.__OldSetModel then
            plyMeta.__OldSetModel = plyMeta.SetModel
            function plyMeta:SetModel(mdl)
            if IsValid(self) then
            end
                return self.__OldSetModel(self, mdl)
                end
        end
    end)
