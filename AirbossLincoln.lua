-- ATTIVA Debug (DA DISATTIVARE PRIMA DELLA PRODUZIONE)
BASE:TraceOnOff(true)
BASE:TraceLevel(1)
BASE:TraceClass("AIRBOSS")


-- Dichiarazione Carrier
local airbossLincoln=AIRBOSS:New("Lincoln", "Lincoln Supercarrier")

-- Opzioni Carrier --
airbossLincoln=AIRBOSS:SetTrapSheet("C:\\temp\\AirbossStats\\")
airbossLincoln=AIRBOSS:Load("C:\\temp\\AirbossStats\\")
airbossLincoln=AIRBOSS:SetTACAN(74,X, "LIN") -- Set TACAN
airbossLincoln=AIRBOSS:SetICLS(2,"LIN") -- Set ICLS
airbossLincoln=AIRBOSS:SetPatrolAdInfinitum(true) -- Alla fine del Patrol la carrier Ricomincia
airbossLincoln=AIRBOSS:SetCarrierControlledArea(60) -- Zona controllata dalla Carrier
airbossLincoln=AIRBOSS:SetRecoveryCase(1) -- Recovery Case Default 1
airbossLincoln=AIRBOSS:AddRecoveryWindow("8:30", "20:00", 1, 15, true, 20)
airbossLincoln=AIRBOSS:SetCollisionDistance(5)
airbossLincoln=AIRBOSS:Save("C:\\temp\\AirbossStats\\")
airbossLincoln=AIRBOSS:SetAutoSave("C:\\temp\\AirbossStats\\")
airbossLincoln=AIRBOSS:SetSoundfilesFolder("Airboss Soundfiles/")
airbossLincoln=AIRBOSS:SetVoiceOversLSOByRaynor()
airbossLincoln=AIRBOSS:SetVoiceOversMarshalByRaynor()
airbossLincoln=AIRBOSS:SetUserSoundRadio()
-- FINE Opzioni Carrier --

airbossLincoln:Start() -- Avvia AIRBOSS ULTIMA LINEA DOPO LE OPZIONI

