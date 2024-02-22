# とても参考にしたもの

https://www.youtube.com/watch?v=vcSijrRsrY0

intel 系 CPU 対象にしたコンパイラ
この動画にある、hydrogen という言語がコンパイルできるようにする。

# 環境

VSCode の devcontainer を使用する。
intel 系 CPU の命令セットの生成、実行を確認するため、
Dockerfile、devcontainer.json では、`amd64`を指定している。

M1 の MacOS でも動くことを目指す(rosetta)。

## devcontainer のはじめかた

VSCode で左下のグリーンのアイコンをクリックして、`コンテナで再度開く`をクリックする

# https://www.youtube.com/watch?v=pupdmHjzrTI

# 1:00〜命令を変更する

`return 69;`→`exit 69;`

# 3:30〜リファクタリング　 mainのtokenize

- 別ファイルに分割する→tokenization.hpp
- `i++`、`i--`をやめる

  ```cpp
  private:
  [[nodiscard]] std::optional<char> peak(int ahead = 1) const {
      if (m_index + ahead > m_src.length()) {
          return {};
      } else {
          return m_src.at(m_index);
      }
  }

  char consume() { return m_src.at(m_index++); }

  const std::string m_src;
  int m_index = 0;
  ```

# 29:00〜リファクタリング　 

