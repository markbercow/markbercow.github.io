# Mark Bercow - GitHub Pages Dev Environment

This project is a fully Dockerized development environment for a Jekyll-based GitHub Pages site, with hot reload and no Ruby or Bundler installation needed on your local machine.

---

## 🚀 How to Run Locally

1. **Build the Docker image** (only needed after a change to Dockerfile or Gemfile):

    ```bash
    docker compose build
    ```

2. **Start the development server (hot reload enabled):**

    ```bash
    docker compose up
    ```

3. **View your site locally:**

    Open [http://localhost:4000](http://localhost:4000) in your browser.

4. **Stop the server cleanly:**

    - Press `Ctrl+C`  
    - Or run:

    ```bash
    docker compose down
    ```

---

## 📂 Project Structure

| Path                 | Purpose                                        |
|----------------------|-------------------------------------------------|
| `Dockerfile`          | Builds the Ruby/Jekyll environment             |
| `docker-compose.yml`  | Defines the container and volume setup         |
| `Gemfile`             | Lists the Ruby gems needed for GitHub Pages    |
| `src/`                | Your site files (Markdown, config, layouts)    |
| `README-dev.md`       | This cheat sheet                               |

---

## ✏️ Editing the Site

- All your editable site content is inside the `src/` folder:
    - `src/index.md`
    - `src/_config.yml`
    - (You can add more files: `about.md`, `_posts/`, assets, etc.)

- **Hot reload is enabled**:  
  Save a file → Refresh your browser → See updates instantly!

---

## ⚡ Common Commands

| Task                         | Command                    |
|-------------------------------|-----------------------------|
| Build container manually     | `docker compose build`     |
| Start container (hot reload) | `docker compose up`        |
| Stop container cleanly       | `docker compose down`      |
| Rebuild if Dockerfile changes | `docker compose up --build` |

---

## 🧠 Notes

- You **do NOT** need Ruby, Jekyll, or Bundler installed locally.
- The site is self-contained in Docker.
- You can develop completely offline once built.
- To deploy your site to GitHub Pages later, push your `src/` contents or use GitHub Actions.

---

Enjoy building your awesome GitHub Pages portfolio! 🚀
