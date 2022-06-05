if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Kajee0311/FilterX.git /FilterX
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /FilterX
fi
cd /FilterX
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
