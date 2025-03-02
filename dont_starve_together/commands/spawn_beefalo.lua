-- 生成训练好的皮弗娄牛
function spawn_beef(tendency)
    local beef = c_spawn("beefalo");
    beef.components.hunger:DoDelta(400);
    beef.components.domesticatable:DeltaTendency(tendency, 1);
    beef:SetTendency();
    beef.components.domesticatable.domestication = 1;
    beef.components.domesticatabl:BecomeDomesticated();
end

-- DEFAULT 其他可用的值有 RIDER, ORNERY, PUDGY
spawn_beef("DEFAULT")
