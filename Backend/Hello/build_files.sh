 echo "BUILD START"
 source venv/bin/activate

# Your script logic goes here
echo "Virtual environment activated. Running script..."
 python3 -m pip install -r requirements.txt
 python3 manage.py collectstatic --noinput --clear
 echo "BUILD END"