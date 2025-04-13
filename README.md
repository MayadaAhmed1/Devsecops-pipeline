# DevSecOps Pipeline Implementation 

- **Project Overview**
- **Pipeline Stages**
- **Getting Started**
- **Upcoming changes**
- **Useful Links**



📌 **Project Overview**

This project is a Tic Tac Toe game developed using React 18 and TypeScript. It also serves as a demonstration platform for applying key security concepts through the integration of tools for Static Application Security Testing (SAST), Software Composition Analysis (SCA), Dynamic Application Security Testing (DAST),Argo CD, and Kubernetes .


🌟  **Pipeline Stages**

The CI/CD pipeline consists of the following stages:

1. **Unit Testing** - Runs the test suite using Vitest
2. **Static Code Analysis** - Performs linting with ESLint
3. **Build** - Creates a production build of the application
4. **Docker Image Creation** - Builds a Docker image using a multi-stage Dockerfile
5. **Docker Image Scan** - Scans the image for vulnerabilities using Trivy
6. **Docker Image Push** - Pushes the image to GitHub Container Registry
7. **Update Kubernetes Deployment** - Updates the Kubernetes deployment file with the new image tag

![Devsecops-pipeline](./images/pipeline_1.png)



 🎯 **Getting Started:**

**Prerequisites:**

### 🔹 **Required GitHub Secrets**

Before running this workflow, add the following **secrets** in your GitHub repo (**Settings → Secrets → Actions**):

- YOUR_GITHUB_USERNAME  → Docker username
- YOUR_GITHUB_TOKEN → Docker password

🔹 **Run**

-Make any change (EX: change player name in file” ScoreBoard” )commit and push changes that will trigger the pipeline .

-Troubleshooting any issue generated at workflow runs like :

 a)Issue found unable to parse image name so i had to edit the docker image tag at two stages (Docker build and image scan) at ci-cd yaml file.

 b)Trivy results some vulnerabilities found while scan the docker image as mentioned below, so i had to edit the docker config file for new versions.

 https://github.com/MayadaAhmed1/Devsecops-pipeline/actions/runs/14303698830/job/40082794239



### 📌 Upcoming Changes

- [ ]  Add Code coverage ,SCA phase
- [ ]  Add Sonar Qube and Quality gate phase
- [ ]  Add Dynamic phase(DAST)
- [ ]  Apply IAST



📚 **Useful Links:**

https://github.com/sottlmarek/DevSecOps?tab=readme-ov-file#oss-and-dependency-management

https://github.com/iam-veeramalla/devsecops-demo

https://www.youtube.com/watch?v=Ke_Wr5zPE0A&t=4047s

