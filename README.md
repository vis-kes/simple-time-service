# simple-time-service
A minimalist Node.js microservice that returns the current timestamp and your IP address as JSON.
This service is containerized using Docker and designed to run securely as a non-root user.

Features
Returns the current UTC timestamp and the client’s IP address in JSON format.
Lightweight and fast, built with Express.js.
Runs as a non-root user inside the Docker container for security.
Easily deployable on any Linux server, including AWS EC2 Ubuntu instances.


Prerequisites
An AWS Ubuntu instance (EC2) with Docker installed.
Node.js and npm (for local development, not needed for Dockerized deployment).
Git (to clone the repository).
DockerHub account (if you want to push/pull images).

API
GET /
Response:
json
{
  "timestamp": "2025-06-09T19:45:30.123Z",

Setup Instructions
1. Clone the Repository
bash
git clone https://github.com/vis-kes/simple-time-service.git
cd simple-time-service


2. Build the Docker Image
bash
docker build -t simple-time-service .
This command creates a Docker image named simple-time-service using the Dockerfile in the repository.


3.Run the Docker Container
bash
docker run -d -p 3000:3000 simple-time-service  "ip": "IP Address"
}

4. Test the Service
From your AWS instance:
bash
curl http://localhost:3000/

From your local machine (replace <EC2-PUBLIC-IP> with your instance’s public IP, and ensure port 3000 is open in your security group):
bash
curl http://<EC2-PUBLIC-IP>:3000/


Security Notes

Make sure to restrict your security group to only allow necessary inbound traffic (e.g., only open port 3000 to trusted IPs).



File Structure
text
simple-time-service/
├── Dockerfile
├── README.md
├── package.json
└── server.js








