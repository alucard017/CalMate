# 🤖 CalMate – Smart Google Calendar Booking Assistant

CalMate is a natural language-powered assistant that helps users **book meetings in their Google Calendar** using plain English like:

> "Schedule a call tomorrow at 3 PM"  
> "Book a meeting next Friday at 10 AM"  
> "Set a discussion for July 15 at 5 PM"

It uses **FastAPI** for backend processing, **LangGraph** for extracting time from natural text, and **Streamlit** for a beautiful conversational frontend UI.

---

## 📦 Features

- 📅 Smart date & time parsing using LangGraph + `dateparser`
- ✅ Checks Google Calendar availability before booking
- 🔐 Uses Google Service Account credentials to book events securely
- 🌐 Interactive frontend chat built with Streamlit
- 🐳 Fully Dockerized (Run both backend & frontend easily)
- 🔗 Event link is generated and displayed after successful booking

---

## 🗂️ Project Structure

![CalMate UI Screenshot](Structure.png)

---

## 🚀 How to Run Locally with Docker

> ⚠️ Ensure Docker Desktop or Docker Engine is installed.

### 1. Clone the repo

```bash
git clone https://github.com/alucard017/CalMate.git
cd CalMate
```

### 2. Add your credentials.json file

- Go to `Google Cloud Console` and create a `Service Account`.
- Enable `Google Calendar API`.
- Generate and download `credentials.json`.
- Place it at the `project root` (outside the backend/ folder).

### 3. Start the project

```bash
docker-compose up --build
```

- `FastAPI backend` runs at: http://localhost:8000/docs

- `Streamlit frontend` runs at: http://localhost:8501

---

## 🧪 Example Booking Flow

- Open localhost:8501
- Enter your name and email
- Type commands like : "Book a meeting tomorrow at 11 AM"
- Get confirmation with a clickable Google Calendar event link
