# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control is what allows us to view the entire history of changes to one or more files, as well as being able to merge revisions done by different people. It's useful because it allows us to not only work collaboratively on a project, but also can roll back to a previous version of it in the past should something go wrong.
* What is a branch and why would you use one?
A branch is a seperate copy of whatever project you are working on. You would want to use one generally whenever you are working on something, but especially so whenever you are working collaboratively. That way the original (master) branch of the file will only reflect the completed changes, and can be used as a source in case the branch you created needs to be reset.
* What is a commit? What makes a good commit message?
A commit is a save point within Git, which can also have a message attached which describes what changes were made in the commit. A good commit message has what exact changes were made and where they take place, and are usually concise, although longer ones can be made with the git -v command.
* What is a merge conflict?
A merge conflict occurs when a file being changed may have significant differences that Git is unable to figure out how to integrate the changes together. It's not an error, but more a notification that you will have to determine which changes will be present in the merged file.