# swiss-watches-backend

1. Create a new directory for your project:

   ```bash
   mkdir my-node-app
   cd my-node-app
   ```

2. Create a new file named `Dockerfile` and paste the following content:

   ```Dockerfile
   # Use an official Node.js runtime as the base image
   FROM node:16-alpine

   # Set the working directory in the container
   WORKDIR /app

   # Copy package.json and package-lock.json (or yarn.lock if you're using Yarn)
   COPY package*.json ./

   # Install dependencies
   RUN npm install

   # Copy the rest of your app's source code
   COPY . .

   # Build the app
   RUN npm run build

   # Expose port 5173 for the app to be accessible
   EXPOSE 5173

   # Start the app
   CMD ["npm", "run", "dev"]
   ```

3. Create a new file named `README.md` and paste the following content:

   ```markdown
   # My Node.js App

   This is a simple Node.js application that demonstrates how to use Docker to containerize a Node.js app.

   ## Prerequisites

   - Docker installed on your machine

   ## Getting Started

   Follow these steps to build and run the Docker container:

   1. Clone this repository:

      ```bash
      git clone https://github.com/your-username/my-node-app.git
      ```

   2. Build the Docker image:

      ```bash
      docker build -t my-node-app .
      ```

   3. Run the Docker container:

      ```bash
      docker run -p 5173:5173 my-node-app
      ```

   4. Open your web browser and visit `http://localhost:5173` to see the app running.

   ## License

   This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
   ```

4. Replace `your-username` in the `git clone` command with your actual GitHub username.

5. Commit your changes and push them to your GitHub repository:

   ```bash
   git add .
   git commit -m "Initial commit"
   git push origin main
   ```

6. Your README.md file should now be updated with the necessary instructions for building and running your Node.js app using Docker. You can customize the README file further based on your specific project requirements.
