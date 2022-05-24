if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/NVSBUDDY/filev5.git /filev5
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /filev5
fi
cd /filev5
pip3 install -U -r requirements.txt
echo "Starting Bot....💥"
python3 bot.py
