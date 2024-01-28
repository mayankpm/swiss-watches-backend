 echo "BUILD START"
 source venv/bin/activate

# Navigate to the directory where the script is located
cd "$(dirname "$0")"

# Navigate to the project directory
echo "Virtual environment activated. Running script..."
 python3 -m pip install -r requirements.txt
 python3 manage.py collectstatic --noinput --clear
 echo "BUILD END"

deactivate