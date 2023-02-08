set -e
USER=charlie.wren

for FILE in .tmux.conf .vimrc

do
    	DEST=/Users/${USER}/$FILE
	if [ -e $DEST ] ; then
		echo "Removing $DEST"...
		rm $DEST
	fi # Remove any file which exists there
	ln -nfs /Users/${USER}/Documents/projects/dotfiles/$FILE $DEST # symlink from the repo
    	echo "Linked $FILE"
done
