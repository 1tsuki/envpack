# LANG 設定
export LANG=ja_JP.UTF-8
 
# 色の読み込み
autoload -Uz colors
colors
 
# 色の定義
local DEFAULT=$'%{e[m%}'$
local RED=$'%{e[1;31m%}'$
local GREEN=$'%{e[1;32m%}'$
local YELLOW=$'%{e[1;33m%}'$
local BLUE=$'%{e[1;34m%}'$
local PURPLE=$'%{e[1;35m%}'$
local LIGHT_BLUE=$'%{e[1;36m%}'$
local WHITE=$'%{e[1;37m%}'$
 
# ビープ音を鳴らさないようにする
setopt NO_beep
 
# エスケープシーケンスを通すオプション
setopt prompt_subst
 
# 'dircolors -p'で出力されるものに手を加えて保存したものを読み込んでる。
if [ -f ~/.dir_colors ]; then
eval `dircolors -b ~/.dir_colors`
fi
 
# コマンドを実行するときに右プロンプトを消す。他の端末等にコピペするときに便利。

setopt transient_rprompt
 
# コマンドラインでも # 以降をコメントと見なす
setopt interactive_comments
 
# 補完候補もLS_COLORSに合わせて色づけ。
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
 
# 補完を有効にするために自分をsource
# source ~/.zshrc
 
# 自動補完
autoload -Uz compinit
compinit
 
# 補完のときプロンプトの位置を変えない
setopt always_last_prompt
 
# ディレクトリ名を入力するとそこに移動出来る。 'cd'を省略出来るわけだが、癖で打ってしまうので正直あまり恩恵は受けていない。
setopt auto_cd
 
# 移動した場所を記録し、cd -[TAB] で以前移動したディレクトリの候補を提示してくれて、その番号を入力することで移動出来るようになる。
setopt auto_pushd
 
# auto_pushdで重複するディレクトリは記録しないようにする。
setopt pushd_ignore_dups
 
# コマンドのスペルミスを指摘して予想される正しいコマンドを提示してくれる。このときのプロンプトがSPROMPT。
setopt correct
 
# 補完候補を表示するときに出来るだけ詰めて表示。
setopt list_packed
 
#ドットファイルにマッチさせるために先頭に'.'を付ける必要がなくなる。
# setopt glog_dots
 
# aliasを展開して補完。
# setopt complete_aliases
 
# 補完候補が複数ある時に、一覧表示する
setopt auto_list

# サスペンド中のプロセスと同じコマンド名を実行した場合はリジューム
setopt auto_resume

#  auto_list の補完候補一覧で、ls -F のようにファイルの種別をマーク表示
setopt list_types
 
# 補完キー（Tab, Ctrl+I) を連打するだけで順に補完候補を自動で補完する
setopt auto_menu
 
# コマンドラインの引数で --prefix=/usr などの = 以降でも補完できる
setopt magic_equal_subst
 
#  複数のリダイレクトやパイプなど、必要に応じて tee や cat の機能が使われる
setopt multios
 
# {a-c} を a b c に展開する機能を使えるようにする
setopt brace_ccl
 
# カッコの対応などを自動的に補完する
setopt auto_param_keys
 
# ファイル名で , ~, ^ の 3 文字を正規表現として扱う
setopt extended_glob
 
# サスペンド中のプロセスと同じコマンド名を実行した場合はリジュームする
setopt auto_resume
 
#  rm * などの際、本当に全てのファイルを消して良いかの確認しないようになる
setopt rm_star_silent
 
#  for, repeat, select, if, function などで簡略文法が使えるようになる
setopt short_loops
 
#  コマンドラインがどのように展開され実行されたかを表示するようになる
# setopt xtrace
 
# ディレクトリの最後のスラッシュを自動で削除する
setopt autoremoveslash
 
# シンボリックリンクは実体を追うようになる
# setopt chase_links
 
# コマンドにsudoを付けてもきちんと補完出来るようにする。Ubuntuだと/etc/zsh/zshrcで設定されている。
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
 
# 大文字・小文字を区別しないで補完出来るようにするが、大文字を入力した場合は区別する。
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
 
# 補完候補を矢印キーなどで選択出来るようにする。'select=3'のように指定した場合は、補完候補が3個以上ある時に選択出来るようになる。
zstyle ':completion:*:default' menu select
 
# zstyleによる補完設定
zstyle ':completion:*' verbose yes
zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list _history
zstyle ':completion:*:messages' format $YELLOW'%d'$DEFAULT
zstyle ':completion:*:warnings' format $RED'No matches for:'$YELLOW' %d'$DEFAULT
zstyle ':completion:*:descriptions' format $YELLOW'completing %B%d%b'$DEFAULT
zstyle ':completion:*:corrections' format $YELLOW'%B%d '$RED'(errors: %e)%b'$DEFAULT
zstyle ':completion:*:options' description 'yes'
# グループ名に空文字列を指定すると，マッチ対象のタグ名がグループ名に使われる。
# したがって，すべての マッチ種別を別々に表示させたいなら以下のようにする
zstyle ':completion:*' group-name ''
 
# 予測変換を行うかどうか
# autoload -U predict-on
# predict-on
 
# コマンド履歴を保存するファイル名。
HISTFILE=~/.zsh/.zsh_histfile
 
# 記憶される履歴の数。
HISTSIZE=10000
 
# 保存される履歴のf徨うと桁が二つぐらい大きい値を設定している人もいるが、とりあえずHISTSIZEと同じにしておく。
SAVEHIST=100000
 
# rootは履歴を保存しない。
if [ $UID = 0 ]; then
unset HISTFILE
SAVEHIST=0
fi
 
# 履歴を複数端末間で共有する。
setopt share_history
 
# 複数の zsh を同時に使う時など history ファイルに上書きせず追加する
setopt append_history
 
# 重複するコマンドが記憶されるとき、古い方を削除する。
setopt hist_ignore_all_dups
 
# 直前のコマンドと同じ場合履歴に追加しない。
setopt hist_ignore_dups
 
# 重複するコマンドが保存されるとき、古い方を削除する。
setopt hist_save_no_dups
 
#  zsh の開始・終了時刻をヒストリファイルに書き込む
setopt extended_history
 
#  コマンドラインの先頭がスペースで始まる場合ヒストリに追加しない
setopt hist_ignore_space
 
#  ヒストリを呼び出してから実行する間に一旦編集できる状態になる
setopt hist_verify
 
# apt-getやdpkgなどのキャッシュ
if [ -d ~/.zsh/cache ]; then
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path ~/.zsh/cache
fi
 
# それぞれの環境に合わせてaliasを設定
case "${OSTYPE}" in
freebsd*|darwin*)
alias ls='ls -G'
;;
linux*)
alias ls='ls --color=auto'
alias grep='grep --color=auto'
;;
esac
# case `uname` in
#     Linux)
#         alias ls='ls --color=auto'
#         ;;
#     Darwin|FreeBSD)
#         alias ls='ls -GvF'
#         ;;
# esac
alias -g L='| $PAGER'
alias -g G='| grep'
alias -g V='| vim -R -'
 
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -al'
# alias lla='ls -a -l | lv'
## }}}
