cd frontend
docker build -t frontend .
docker docker run -d -p 5000:5000 frontend


cd backend
docker build -t backend .
docker docker run -d -p 8000:8000 backend
