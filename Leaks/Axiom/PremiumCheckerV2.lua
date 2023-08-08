function getLicense()
    local PremiumListURL = loadstring(game:HttpGet("https://raw.githubusercontent.com/Aetheronn/Axiom/main/bin/PremiumList"))()
    local Premiumlist
    for i,v in ipairs(PremiumListURL) do
        Premiumlist = v
    end
    if game:GetService("RbxAnalyticsService"):GetClientId() == Premiumlist then
        return 'Premium'
    end
    return 'Norm'
end

print(getLicense())