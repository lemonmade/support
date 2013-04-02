# Support.scpt
## by Chris Sauvé of [pxldot](http://pxldot.com)


## Description
This script gives you the ability to set a "support" folder in a project's notes, and will automatically open this folder in Finder (or PathFinder, if running) when you run the script. You can either set the folder path manually (not recommended; if you want to, make sure you are using the POSIX path of the desired folder), or allow the script to prompt you to select the folder (which happens automatically if you have a folder that does not already have a support folder declared in the project notes). Projects can be selected by selecting the project itself in the content area/ sidebar, or by selecting any of the project's tasks.


## Runtime Options
- The script will ask you what string you would like to use to denote the folder path: either `@support`, `@folder` or `@reference` (default is `@support`)


## Compile-Time Options
- By default, the script will look only at the first project you have selected (and thus, will only open this project's support folder). You can change this by changing the `defaultToFirstProject` property of the script to `false`.


## Installation
Download the most recent version of the script. Once you have downloaded the script, navigate to your Application script folder located at `~/Library/Scripts/Applications/OmniFocus`. Apple hides the Library folder in Mac OS X 10.7 or later by default, so the easiest way to get to this folder is to select the menu item `Go > Go To Folder...` in Finder.app. You may have to manually create an OmniFocus folder in the `~/Library/Scripts/Applications` directory if you do not have any previous scripts for OmniFocus (you may have to create more of the folders in the directory; if you don't have an Applications folder or even a Scripts folder, you will have to create those as well).


## Using The Script
There are countless ways you can run the script. If you are a pro user, you likely know even more ways than I do: options like launching the script from FastScripts, Alfred, LaunchBar, or a Keyboard Maestro macro are all available to you. Below I'll explain two ways to run the script, primarily targetted at more novice users.

Your first option is to run the script from Apple's AppleScript menu. If you don't have a little script icon near the clock in your Mac's menubar, you need to turn this on manually. Open AppleScript Editor.app from your `Applications > Utilities` folder. Go to AppleScript's preferences by selecting `AppleScript Editor > Preferences...` from the menubar. On the "General" pane, you should check the checkbox to "Show Script menu in menu bar". Now, when in OmniFocus, select the new script menubar item and you will see the script at the bottom of the list, ready to be clicked and run.

OmniFocus has another way to run scripts, and it's even easier than the method described above. Once the script is installed, go to OmniFocus and right- (control-) click on the toolbar (the gray bar at the top of the window that shows icons for your inbox, projects, and more). Choose "Customize Toolbar..." from the contextual menu that pops up. You will then see a list of all items that can be put in your menubar, including (at the bottom) any scripts that you have installed. Drag the script anywhere on the toolbar and click "Done". You now have one-click access to run this script!


## Version History
- **0.1.0** (April 2, 2013): Initial release.