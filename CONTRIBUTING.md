## Bug reports
Before filing a bug report, please do the following:
- Look over issues to see if it's already been reported.  It's not the end of the world if we have a duplicate issue (we will simply close it), but it's far easier for both us and you if we keep everything on one issue.
- If you noticed the bug on a game, run the command "version" and paste the output.  Version was added in version 0.3 (note that make generate-version-file must be run before make test in version 0.3), and it includes the latest tag, with the latest commit message and commit hash if you are not directly on the tag.
- Run the test suite ([here][1], or compile using make test), submit your results, and mention your Report ID in the issue.  Note that if you are compilimng yourself, please ensure that your working directory is clean (git status should say nothing to commit, working directory clean) and all changes are pushed (we can't help you if we don't have the code).  Mention if you were on a fork of iMagine, and give a link to the fork as well (however, you may wish to add your issue directly to that fork).

[1]: https://drone.io/github.com/iggyvolz/iMagine/files/bin/Tests.swf
