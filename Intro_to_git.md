#Very basic intoduction to Git for Meta-analysis in Ecology course

This lesson was modified from a tutorial created by James Robinson at: https://github.com/baumlab/Gitting-started/blob/master/Gitting-started.md

Authored by Lauren Yeager Feb 5, 2019

###1. Navigating the Github website

Clicking the Git icon button in top left (the cat) shows you the main screen.
Note: Repositories which you are collaborating to are only viewable on this screen.

Username/photo icon in upper right shows dashboard for:

1. Contributions: Lists the repositories that you have recently worked in, and your Github activity over the last year
2. Repositories: Shows your private and public repositories, and the repos you have forked from other members
3. Public activity: Shows your work on Github - what have you forked, pulled, merged?



###2. Create your first repo:

See also: https://help.github.com/articles/create-a-repo

FOR TEAMS - we will do this when multiple members want to collaborate on the code and manuscript for one project/manuscript

Your repo can be private or public - up to you, but make sure that you discuss with everyone in the team before publishing a public repo.


###3 Collaborate on a repository

There are two main models of collaborating on Github:

1) Forking (i.e. everyone's repo is connected to every other repo)
With this model, one source repo is maintained by each collaborator. Anyone can fork off the repo, work on their own personal repo, and fetch upstream changes from collaborators. This is most useful when one person is in charge of all the edits, or when a number of people are working independently on different aspects of the project.

2) Shared Repository Model (i.e. everyone clones the same Git repo)
This is more commonly used by teams and organisations - everyone has write access to a single shared repository, and the team works more collaboratively on all aspects of the project.

We will do an example using a shared repository since this is the simplest and most common methods used

###4 Navegate to the directory you want to work in

Open up your terminal (Mac) or unix shell (e.g., Git Bash, Windows) on your local machine

```shell
pwd
#Tells you what directory you are currently in
cd ~/Documents/R_meta/
#Moves you to a new directory/folder relative to your current directory
ls
#Tell you what files are in the current directory
```

###5. Set up your personal account

See also: https://help.github.com/articles/set-up-git

```shell
git config --global user.name "myusername"
# Sets the default name for git to use when you commit
git config --global user.email "myemailaddress"
# Sets the default email for git to use when you commit
```

You might want to tell Git to remember your username and password when you clone new repos. Follow instructions on cashing passwords: <https://help.github.com/articles/caching-your-github-password-in-git/>



####6 For cloning:

The team leader should add every team member as a collaborator (in the Settings section of the repo page). Now everyone will have read and write access to the repository. 

Once you are in the folder that you want to keep the repo in, clone the respository from Github to your local machine:

```shell
git clone https://github.com/username/reponame.git
```

Now you will all be able to push and pull files to the main repository. 


###6 Make commits and push to Github

Now you work. And make edits. And push to github. This section is just for you - you won't be able to make changes to the team repo yet.

To add files to the repo:

```shell
git add filename
```

To commit the changes to the repo and add a comment:

```shell
git commit -m "This is my first commit"
```

Now your local repository - the **master** branch - has some changes that aren't up to date with the Github server (the **origin** branch). You can check this using:

```shell
git status
```


Here you will either see "Your branch is up to date" and no changes have been made. Or, you will see red files that are "ahead" of the origin, and are called uncommitted changes. You need to push these up to github:

```shell
git push origin master
```

This command sends the commits from **master** to **origin** (from your computer to Github).



To work on a shared repository, you need to start your day with a ```git pull```, to get any new changes from the baumlab repo. As you work, be sure to use ```git add -A``` and ```git commit -m 'commiting something'``` to keep your changes recorded. Before you push up to the main repository you will need to pull, add and commit, then push. If git finds a merge conflict, *you* will need to fix it. More on this here:https://nceas.github.io/oss-lessons/version-control/3-git-advanced.html.

 

