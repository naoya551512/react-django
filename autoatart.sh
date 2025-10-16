#!/bin/bash
set -e

if [ ! -d "backend" ]; then
  echo "Creating Django project..."
  django-admin startproject backend
fi

if [ ! -d "frontend" ]; then
  echo "Creating React project..."
  npx create-react-app frontend
fi

echo "Installing dependencies..."
pip install -r requirements.txt
npm install --prefix frontend

echo "Starting Django and React servers..."
# Djangoをバックグラウンドで起動
( cd backend && python manage.py runserver 0.0.0.0:8000 & )

# Reactを起動（フォアグラウンド）
npm start --prefix frontend