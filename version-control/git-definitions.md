# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is simply put, a way to manage and organize (control) versions of a project.If you are working on a team it is a good way to manage the changes every individual makes to certain code. It is useful if any errors are made, you can look back to different versions of the code and identify the error. So, it can basically be seen as a 'backup'. With version control numerous people can work on the some code concurrently, so more work can get done. It is also useful to track individual changes and helping make sure the individual changes are compatible.

* What is a branch and why would you use one?

There is one 'master' file and then there are branchs off the master file that individuals can work on. They can then 'merge' their branchs together to come back to the master file. For example, if a few people were going on a vacation and making an itinerary, and everyone had a copy of what Day 1 on the itinerary would look like. Then 1 person is assigned to Day 2, 1 person assigned to Day 3, and so on.. Each day would be a branch. They could all work on each designated day of their itinerary and be able to merge all the days (branches) together for a complete itinerary.

* What is a commit? What makes a good commit message?

There are 3 parts to git workflow, the working directory (where you make changes to files), the staging area, and the repository (where you save changes to the repository using commit).
After using 'git add' to add your changes to the staging area, the next step is to use 'git commit' to save these changes to your repository.
A good commit message will be informative but still under 50 characters. It will advise what was changed and why it was changed. You want to be able to look back at your commit messages to know what code you changed and why. That would help with resolving coding problems.

* What is a merge conflict?

When a branch gets made of a master, it gets a copy of whatever is in the master branch. So, using the example above of the itinerary, all the branches would have a copy of Day 1 off the master branch. But say someone updated some part of the Day 1 itinerary on the master branch after the other branches were made. When the other branches (Day 2/3/etc) would go to merge with the master branch, their Day 1 version of the master branch would be different. And it would create a merge conflict because the master file is different than what the branches have.