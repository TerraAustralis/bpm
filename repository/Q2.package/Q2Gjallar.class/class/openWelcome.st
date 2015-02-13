readme
openWelcome
	"self openWelcome"

	(Workspace new contents:
'This is the Gjallar development image. It contains the "current" versions we use of third party libraries etc, and also the latest published Gjallar code as of publication of this image. On purpose it does not include many tools that you probably want like RB and eCompletion.

Note: This image can be built from a vanilla basic image by using shell scripts and the Installer script scripts/gjallar.st. See detailed description in Readme.txt.

To upgrade Gjallar, use the http://mc.gjallar.se repository which is open. The package is called Q2 (for historic reasons). In that repository there are also patched versions of some of the third party libraries that we use. Most such patches should be fed back of course.

If you only wish to code on Gjallar with the least worries:

1. Contact me (goran@krampe.se) to get write access to the repository at http://mc.gjallar.se to publish your own Q2 versions.

2. Download this dev image now and then, or use the shell scripts to build your own. The gjallar.st script tries to use newer packages if available for some packages, and those may not work. In order to be absolutely sure to have something that works the downloaded image is a good bet.

3. Track the versions with a release number tacked on and that are from me (gk) like say "Q2v0.Z-gk.xxx" if you want to stick with the "latest integrated" trunk. All other versions are considered personal work versions and can be buggy as hell. Well, mine can be too. :) Eventually we may move over to have a designated "trunk" branch instead of a "gk" branch.

If someone wants to maintain a branch of his/her own then such versions should also have a symbolic identifier after Q2 like say "Q2mybranch.yy.xxx" (and I humbly request people to discuss branches with me before creating them in the repository). But for most uses you can just save contributed snapshots and I will merge them in eventually.

Some simple doits are in the window to the left, but for more info - see the swiki:

	http://www.gjallar.se

regards, Göran on behalf of the Gjallar team')
	openLabel: 'Welcome to Gjallar!'