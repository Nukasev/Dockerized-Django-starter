
# :judge: OBLIGATORY DISCLAIMER :judge:

## Everything in this repository is available "as is" without any explicit or implicit promises or claimed responsibility of working setup, further development, updates, warranties or guarantees etc.. If you use this repository, you're solely responsible. See LICENSE-file for the actual boilerplate.

# :rocket: Building the project :rocket:

### 1. Repository setup

1.1. Clone the repository

1.2. Remove .git-folder from the repository-folder unless you're actually working on this very repository.

1.3. Rename the repository(-folder) to your liking

1.4. Setup git or whatever VCS you're using. (You're using version control, right? :pleading_face:)

### 2. Set up the environment file

2.1. Create an empty text file called ```.env``` in the repository-folder. 

2.2. Copy the contents of the ```env.sample```-file to the ```.env```-file. 

2.3. Edit the postgres-related variables in the ```.env```-file to your liking. It is recommended to at least set up a proper password for the postgres-user. (Note that ```.env```-file is configured to be ignored by git)

2.4. Change ```DJANGO_SECRET_KEY``` to a proper value in the  ```.env```-file.

### 3. Build the container

3.1. Run the following command in the **host's** repository-folder:

```docker-compose up -d```

**Note that this step is dependent on having a proper .env-file set up, you'll get postgres-related errors if your .env-file is not set up properly.**

### 4. Django setup

4.1 Test setup by running the following command in the **container's** repository-folder: 

```python manage.py showmigrations```

You should see Django's basic, out-of-the-box migrations and that these have not been ran.

4.2 Run the migrations by running the following command in the **container's** repository-folder:

```python manage.py migrate```