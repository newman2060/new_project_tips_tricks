#!/bin/bash

# Tạo file README.md
echo "Tạo file README.md..."
cat << EOF > README.md
# README.md

This is the README file for the project.
EOF
echo "File README.md đã được tạo."

# Tạo file .env
echo "Tạo file .env..."
cat << EOF > .env
DB_HOST=your_host
DB_PORT=your_port
DB_PASSWORD=your_password
DEFAULT_DB_NAME=postgres
DEFAULT_DB_USER=your_default_user

VIRTUAL_ENV=./venv
EOF
echo "File .env đã được tạo."

# Tạo môi trường ảo
echo "Tạo môi trường ảo..."
python -m venv venv

# Kích hoạt môi trường ảo
echo "Kích hoạt môi trường ảo..."
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
    source venv/Scripts/activate
else
    source venv/bin/activate
fi

# Cài đặt các thư viện cần thiết
echo "Cài đặt các thư viện cần thiết..."
# pip install python-dotenv pandas openpyxl psycopg2

# Tạo file .gitignore
echo "Tạo file .gitignore..."
cat << EOF > .gitignore
# Các file cấu hình và bí mật
*.code-workspace
*.env
*.ini
config.json
secrets.yaml
*.pem
*.key
*.crt
local_settings.py

# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
env/
venv/
ENV/
env.bak/
venv.bak/
*.egg-info/
*.egg
dist/
build/
develop-eggs/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
*.manifest
*.spec

# Django
*.log
*.pot
db.sqlite3
media/
staticfiles/
*/migrations/

# Testing và Coverage
.coverage
.tox/
.nox/
.pytest_cache/
coverage.xml
*.cover
.hypothesis/
nosetests.xml
htmlcov/

# IDE và Editor
.idea/
.vscode/
*.sublime-project
*.sublime-workspace
*.swp
*.swo
*.swn
*.iml
*.iws
*.ipr

# Hệ điều hành
.DS_Store
Thumbs.db
ehthumbs.db
Desktop.ini
Icon?

# Các file và thư mục nhạy cảm
*password*
*secret*
*credential*
*token*
*.bak
*.tmp
*.temp
*.old

# Dữ liệu và Output
output/
data/
*.xlsx
*.xls
*.csv
*.json
*.db
*.sqlite3
*.sql
*.pgsql

# Logs và Debug
debug/
logs/
*.log
*.out
*.err
*.dat

# Cache và file tạm thời
.cache/
tmp/
temp/
.mypy_cache/
.dmypy.json
dmypy.json

# Môi trường ảo và Packaging
.Python
Pipfile.lock
.python-version
*.tar.gz
*.zip
*.wheel

# Celery
celerybeat-schedule
celerybeat.pid

# Sphinx
docs/_build/

# Jupyter Notebooks
.ipynb_checkpoints/

# Freqtrade
freqtrade/
trades/
backtests/
hyperopt/
backtest-results/

# Loại trừ thêm
*.pyc
*.pyo
*.pyd
.DS_Store
*.sqlite3
*.coverage
*.mo
*.orig

EOF
echo "File .gitignore đã được tạo."


echo "Quá trình cài đặt và chạy đã hoàn tất."
