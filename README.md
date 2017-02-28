#vimrc
this is the backup of my own vimrc, welcomde fork or commit.

##1. add change-id
su

cp change-id to /usr/share/git-core/template/hooks/

mv change-id commit-msg

chmod u+x commit-msg


##2. replace .vimrc
cp vimrc ~

rm -f .vimrc

mv vimrc .vimrc


##note:
some plugin is needed.
