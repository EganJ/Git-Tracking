# WARNING
Mostly broken


# A Repository Tracking System
This repository is meant to contain a variety of tools for tracking and managing git repositories. 
gittracker.bat is for creation and initialization of repos, taking the link to the repo as a parameter for cloning and the link and the folder name as the parameters for creating a new repository. Does not yet work with moving exisiting repositories.

Currently only operates based on a folder c:\GitRepositories

The folder must be added to the path to be called globally. On windows, the .bat can be ommitted.

gittracker.bat <url> <Name?> -Clones a repository. If folder name is included, initalizes the repository instead.
gitchecker.bat + checkonerepo.bat: calls git status for each and every git repository being tracked in a new window, or for a single repo
gitlist.bat - Lists all repositories in the fodler.
