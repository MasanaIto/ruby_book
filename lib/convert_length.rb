UNITS = { m: 1.0, ft: 3.28, in: 39.37 }

# 長さの単位変換をする
#
# @param length [int] 変換元の長さ
# @param from [Symbol] 変換元の単位
# @param to [Symbol] 変換後の単位
#
# @example
#  (35000, from: :ft, to: :m) => 10670.73
#
# @return [int] 変換後の長さ
def convert_length(length, from: :m, to: :m)
    (length / UNITS[from] * UNITS[to]).round(2)
end
