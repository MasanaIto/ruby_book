# キーがシンボルなら新しいハッシュ記法に変換する
#
# @param old_syntax [Hash] 置換前のテキスト
#
# @example
# {
#     :name => 'Alice',
#     :age => 20,
#     :gender => :female
# }
# =
# {
#     name: 'Alice',
#     age: 20,
#     gender: :female
# }
#
# @return [Hash] 置換後のテキスト
def convert_hash_syntax(old_syntax)
    old_syntax.gsub(/:(\w+) *=> */, '\1: ')
end



# gsubメソッド...置換処理
# gsub(/:(\w+) *=> */, '\1: ')
#
# 第一引数 ":(\w+) *=> *""
# ":キー => "を取得する
#
# 第二引数 "\1: "
# 一番目にキャプチャされた文字列を表し、:を付与する
