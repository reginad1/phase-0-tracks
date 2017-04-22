# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control is a way to keep track of changes that you make to files or projects because it allows us to look at the history of revisions made to different files.  It also allows us to merge revisions made by different people.  Since version control allows us to see the history of files or documents, if someone makes a mistake while working on something, you can easily go back in time to see where the mistake was made and address it.

* What is a branch and why would you use one?
A branch gives you a copy of your project to work on without risking the master copy.  Anytime you work on software, you want to keep the master branch 'clean.'  This ensures that you don't have to worry about files in the master not working, and instead you just have to worry about the branches that you merge in.  You use branches anytime you need to make a change to something in the master branch, or also when you have multiple people working on various tasks off of something in a master branch.

* What is a commit? What makes a good commit message?
A commit is a save point within your repository or your version control cycle.  Anytime you make a change to a file within your project, you can commit it so it can be accessed in your git history.  A good commit message clearly communicates what changes were made.  It is best if commit messages are specific.

* What is a merge conflict?
A merge conflict is when you've worked on something, like a .md file in one branch, and someone else has worked on that same thing (same .md file) in a different branch, and you've each made unique changes.  One of you will be able to merge your branch with the master without a problem.  However, when the second person attempts to merge their branch with the master branch git isn't going to know which version to actually use, so you get a merge conflict.  This happens because different commits were made on the same file.