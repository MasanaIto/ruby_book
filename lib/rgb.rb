# 10進数の数値3つを16進数の文字列に変換する
#
# @param r [int] RED
# @param g [int] GREEN
# @param b [int] BLUE
#
# @example
#  [r, g, b] = [4, 60, 120]
#
# @return [string] hex
def to_hex(r, g, b)
    [r, g, b].inject('#') do |hex, n|
        hex + n.to_s(16).rjust(2, '0')
    end
end



# 16進数の文字列を10進数の数値3つに変換する
#
# @param hex [String] 16進数
#
# @example
#  hex = '#043c78'
#
# @return [array] [r, g, b]
def to_ints(hex)
    r = hex[1..2]
    g = hex[3..4]
    b = hex[5..6]
    [r, g, b].map do |s|
        # mapメソッド...ブロックの戻り値が配列の要素になる新しい配列が作成される
        s.hex
    end
end
