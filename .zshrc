# LANG �ݒ�
export LANG=ja_JP.UTF-8
 
# �F�̓ǂݍ���
autoload -Uz colors
colors
 
# �F�̒�`
local DEFAULT=$'%{e[m%}'$
local RED=$'%{e[1;31m%}'$
local GREEN=$'%{e[1;32m%}'$
local YELLOW=$'%{e[1;33m%}'$
local BLUE=$'%{e[1;34m%}'$
local PURPLE=$'%{e[1;35m%}'$
local LIGHT_BLUE=$'%{e[1;36m%}'$
local WHITE=$'%{e[1;37m%}'$
 
# �r�[�v����炳�Ȃ��悤�ɂ���
setopt NO_beep
 
# �G�X�P�[�v�V�[�P���X��ʂ��I�v�V����
setopt prompt_subst
 
# 'dircolors -p'�ŏo�͂������̂Ɏ�������ĕۑ��������̂�ǂݍ���ł�B
if [ -f ~/.dir_colors ]; then
eval `dircolors -b ~/.dir_colors`
fi
 
# �R�}���h�����s����Ƃ��ɉE�v�����v�g�������B���̒[�����ɃR�s�y����Ƃ��ɕ֗��B

setopt transient_rprompt
 
# �R�}���h���C���ł� # �ȍ~���R�����g�ƌ��Ȃ�
setopt interactive_comments
 
# �⊮����LS_COLORS�ɍ��킹�ĐF�Â��B
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
 
# �⊮��L���ɂ��邽�߂Ɏ�����source
# source ~/.zshrc
 
# �����⊮
autoload -Uz compinit
compinit
 
# �⊮�̂Ƃ��v�����v�g�̈ʒu��ς��Ȃ�
setopt always_last_prompt
 
# �f�B���N�g��������͂���Ƃ����Ɉړ��o����B 'cd'���ȗ��o����킯�����A�Ȃőł��Ă��܂��̂Ő������܂艶�b�͎󂯂Ă��Ȃ��B
setopt auto_cd
 
# �ړ������ꏊ���L�^���Acd -[TAB] �ňȑO�ړ������f�B���N�g���̌���񎦂��Ă���āA���̔ԍ�����͂��邱�Ƃňړ��o����悤�ɂȂ�B
setopt auto_pushd
 
# auto_pushd�ŏd������f�B���N�g���͋L�^���Ȃ��悤�ɂ���B
setopt pushd_ignore_dups
 
# �R�}���h�̃X�y���~�X���w�E���ė\�z����鐳�����R�}���h��񎦂��Ă����B���̂Ƃ��̃v�����v�g��SPROMPT�B
setopt correct
 
# �⊮����\������Ƃ��ɏo���邾���l�߂ĕ\���B
setopt list_packed
 
#�h�b�g�t�@�C���Ƀ}�b�`�����邽�߂ɐ擪��'.'��t����K�v���Ȃ��Ȃ�B
# setopt glog_dots
 
# alias��W�J���ĕ⊮�B
# setopt complete_aliases
 
# �⊮��₪�������鎞�ɁA�ꗗ�\������
setopt auto_list

# �T�X�y���h���̃v���Z�X�Ɠ����R�}���h�������s�����ꍇ�̓��W���[��
setopt auto_resume

#  auto_list �̕⊮���ꗗ�ŁAls -F �̂悤�Ƀt�@�C���̎�ʂ��}�[�N�\��
setopt list_types
 
# �⊮�L�[�iTab, Ctrl+I) ��A�ł��邾���ŏ��ɕ⊮���������ŕ⊮����
setopt auto_menu
 
# �R�}���h���C���̈����� --prefix=/usr �Ȃǂ� = �ȍ~�ł��⊮�ł���
setopt magic_equal_subst
 
#  �����̃��_�C���N�g��p�C�v�ȂǁA�K�v�ɉ����� tee �� cat �̋@�\���g����
setopt multios
 
# {a-c} �� a b c �ɓW�J����@�\���g����悤�ɂ���
setopt brace_ccl
 
# �J�b�R�̑Ή��Ȃǂ������I�ɕ⊮����
setopt auto_param_keys
 
# �t�@�C������ , ~, ^ �� 3 �����𐳋K�\���Ƃ��Ĉ���
setopt extended_glob
 
# �T�X�y���h���̃v���Z�X�Ɠ����R�}���h�������s�����ꍇ�̓��W���[������
setopt auto_resume
 
#  rm * �Ȃǂ̍ہA�{���ɑS�Ẵt�@�C���������ėǂ����̊m�F���Ȃ��悤�ɂȂ�
setopt rm_star_silent
 
#  for, repeat, select, if, function �ȂǂŊȗ����@���g����悤�ɂȂ�
setopt short_loops
 
#  �R�}���h���C�����ǂ̂悤�ɓW�J������s���ꂽ����\������悤�ɂȂ�
# setopt xtrace
 
# �f�B���N�g���̍Ō�̃X���b�V���������ō폜����
setopt autoremoveslash
 
# �V���{���b�N�����N�͎��̂�ǂ��悤�ɂȂ�
# setopt chase_links
 
# �R�}���h��sudo��t���Ă�������ƕ⊮�o����悤�ɂ���BUbuntu����/etc/zsh/zshrc�Őݒ肳��Ă���B
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
 
# �啶���E����������ʂ��Ȃ��ŕ⊮�o����悤�ɂ��邪�A�啶������͂����ꍇ�͋�ʂ���B
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
 
# �⊮������L�[�ȂǂőI���o����悤�ɂ���B'select=3'�̂悤�Ɏw�肵���ꍇ�́A�⊮��₪3�ȏ゠�鎞�ɑI���o����悤�ɂȂ�B
zstyle ':completion:*:default' menu select
 
# zstyle�ɂ��⊮�ݒ�
zstyle ':completion:*' verbose yes
zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list _history
zstyle ':completion:*:messages' format $YELLOW'%d'$DEFAULT
zstyle ':completion:*:warnings' format $RED'No matches for:'$YELLOW' %d'$DEFAULT
zstyle ':completion:*:descriptions' format $YELLOW'completing %B%d%b'$DEFAULT
zstyle ':completion:*:corrections' format $YELLOW'%B%d '$RED'(errors: %e)%b'$DEFAULT
zstyle ':completion:*:options' description 'yes'
# �O���[�v���ɋ󕶎�����w�肷��ƁC�}�b�`�Ώۂ̃^�O�����O���[�v���Ɏg����B
# ���������āC���ׂĂ� �}�b�`��ʂ�ʁX�ɕ\�����������Ȃ�ȉ��̂悤�ɂ���
zstyle ':completion:*' group-name ''
 
# �\���ϊ����s�����ǂ���
# autoload -U predict-on
# predict-on
 
# �R�}���h������ۑ�����t�@�C�����B
HISTFILE=~/.zsh/.zsh_histfile
 
# �L������闚���̐��B
HISTSIZE=10000
 
# �ۑ�����闚����f�r���ƌ�������炢�傫���l��ݒ肵�Ă���l�����邪�A�Ƃ肠����HISTSIZE�Ɠ����ɂ��Ă����B
SAVEHIST=100000
 
# root�͗�����ۑ����Ȃ��B
if [ $UID = 0 ]; then
unset HISTFILE
SAVEHIST=0
fi
 
# �����𕡐��[���Ԃŋ��L����B
setopt share_history
 
# ������ zsh �𓯎��Ɏg�����Ȃ� history �t�@�C���ɏ㏑�������ǉ�����
setopt append_history
 
# �d������R�}���h���L�������Ƃ��A�Â������폜����B
setopt hist_ignore_all_dups
 
# ���O�̃R�}���h�Ɠ����ꍇ�����ɒǉ����Ȃ��B
setopt hist_ignore_dups
 
# �d������R�}���h���ۑ������Ƃ��A�Â������폜����B
setopt hist_save_no_dups
 
#  zsh �̊J�n�E�I���������q�X�g���t�@�C���ɏ�������
setopt extended_history
 
#  �R�}���h���C���̐擪���X�y�[�X�Ŏn�܂�ꍇ�q�X�g���ɒǉ����Ȃ�
setopt hist_ignore_space
 
#  �q�X�g�����Ăяo���Ă�����s����ԂɈ�U�ҏW�ł����ԂɂȂ�
setopt hist_verify
 
# apt-get��dpkg�Ȃǂ̃L���b�V��
if [ -d ~/.zsh/cache ]; then
zstyle ':completion:*' use-cache yes
zstyle ':completion:*' cache-path ~/.zsh/cache
fi
 
# ���ꂼ��̊��ɍ��킹��alias��ݒ�
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
