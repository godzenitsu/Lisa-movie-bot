if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/godzenitsu/Lisa-movie-bot.git /Lisa-movie-bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Lisa-movie-bot
fi
cd /DQTheFileDonorBot
pip3 install -U -r requirements.txt
echo "Starting Lisa-movie-bot...."
python3 bot.py
