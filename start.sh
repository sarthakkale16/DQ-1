if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/sarthakkale16/selina.git /selina
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /selina
fi
cd /selina
pip3 install -U -r requirements.txt
echo "Starting selina...."
python3 bot.py
