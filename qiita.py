'''--------------------------------
Qiitaいいね数の上位5位までを書いてね！
あとは、python qiita.pyを実行だ(*･ᴗ･*)و
--------------------------------'''
contributions = [1005, 322, 299, 90, 46]


'''--------------------------------
集計結果を出力する為に色々してる所だよ！
リファクタリング待ってて( ´•௰• ` )
--------------------------------'''
total = sum(contributions)

for contribution in contributions:
  print(contribution, end="")
  num = 0
  space = 4 - len(str(contribution))
  while num < space:
      print(' ', end="")
      num += 1

  print('  Contribution  ', end="")

  percentage = round(contribution / total * 10) * 2
  num = 0
  while num < percentage:
      print('█', end="")
      num += 1
  print('▎', end="")
  other = 20 - percentage
  num = 0
  while num < other:
      print('░', end="")
      num += 1

  print('  ', end="")
  other_pace = contribution / total * 100
  other_pace_len = len(str(round(contribution / total * 100)))
  if other_pace_len == 1:
    print(' ', end="")
  print('{:.1f}'.format(other_pace) + '%')
