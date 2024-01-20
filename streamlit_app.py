# streamlit_app.py
import streamlit as st
import requests

# Define Django backend API URL
backend_api_url = "http://127.0.0.1:8000/auth/"

# Streamlit app code
st.title("Django-Streamlit Integration")

# Example: Fetch data from Django backend
response = requests.get(backend_api_url + "watches/")
if response.status_code == 200:
    watches = response.json()
    st.write("Watches from Django backend:")
    st.write(watches)
else:
    st.write(f"Error fetching data from Django backend. Status code: {response.status_code}")
