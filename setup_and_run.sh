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
source venv/Scripts/activate

# Cài đặt các thư viện cần thiết
echo "Cài đặt các thư viện cần thiết..."
# pip install python-dotenv pandas openpyxl psycopg2

# Tạo file .gitignore
echo "Tạo file .gitignore..."
cat << EOF > .gitignore
# Các file cấu hình và bí mật
*.env
*.ini
config.json
secrets.yaml
*.pem
*.key
*.crt

# Python
*.pyc
*.pyo
__pycache__/
*.pyd
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
.eggs/

# Django
*.log
*.pot
*.py[cod]
db.sqlite3
media/
staticfiles/
*.DS_Store
*.sqlite3
*.pyc
*.pyo
*.pyd
*.coverage
.coverage.*
nosetests.xml
*.coverage
*.mo
*.orig
*.so
*.swp

# Freqtrade
freqtrade/
trades/
backtests/
hyperopt/
logs/
backtest-results/
*.csv
*.json

# IDE và editor
.vscode/
.idea/
*.sublime-project
*.sublime-workspace
*.swp

# Hệ điều hành
Thumbs.db
.DS_Store
ehthumbs.db
Icon?
Desktop.ini

# Thêm các file và thư mục nhạy cảm
*password*
*secret*
*credential*
*token*
*.bak
*.tmp
*.temp
*.old

# Loại trừ các file output và dữ liệu
output/
data/
*.xlsx
*.xls
*.db

# Các file log và debug
*.log
debug/
logs/

# Các file tạm thời và cache
.cache/
tmp/
temp/
EOF
echo "File .gitignore đã được tạo."


echo "Quá trình cài đặt và chạy đã hoàn tất."