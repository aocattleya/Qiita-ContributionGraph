--[[--------------------------------
Pythonでも書いてます⸜( ´ ꒳ ` )⸝
https://github.com/aocattleya/Qiita-ContributionGraph

contributionsに、Qiitaいいね数の上位5位までを書いてね！
あとは、lua qiita.luaで実行だ(*･ᴗ･*)و
--]]--------------------------------
contributions = {1005, 322, 299, 90, 46}


--[[--------------------------------
集計結果を出力する為に色々してる所だよ！
リファクタリング待ってて( ´•௰• ` )
--]]--------------------------------
total = 0
for i = 1, #contributions do
    total = total + contributions[i]
end

for i, contribution in ipairs(contributions) do
    num = 0
    space = 4 - string.len(tostring(contribution))
    while num < space do
        io.write(' ')
        num = num + 1
    end
    io.write(contribution)

    io.write('  Contribution  ')

    percentage = math.floor(contribution / total * 10 * 2)
    num = 0
    while num < percentage do
        io.write('█')
        num = num + 1
    end
    io.write('▎')
    other = 20 - percentage
    num = 0
    while num < other do
        io.write('░')
        num = num + 1
    end

    io.write('  ')

    space = contribution / total * 100
    space_len = string.len(tostring(math.floor(contribution / total * 100)))
    if space_len == 1 then
        io.write(' ')
    end
    io.write(string.format("%.1f", space))
    print('%')
end