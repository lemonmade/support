# Support.scpt
## by Chris Sauvé of [pxldot](http://pxldot.com)

## Description
This script gives you the ability to set a "support" folder in a project's notes, and will automatically open this folder in Finder (or PathFinder, if running) when you run the script. You can either set the folder path manually (not recommended; if you want to, make sure you are using the POSIX path of the desired folder), or allow the script to prompt you to select the folder (which happens automatically if you have a folder that does not already have a support folder declared in the project notes). Projects can be selected by selecting the project itself in the content area/ sidebar, or by selecting any of the project's tasks.

## Runtime Options
- The script will ask you what string you would like to use to denote the folder path: either `@support`, `@folder` or `@reference` (default is `@support`)

## Compile-Time Options
- By default, the script will look only at the first project you have selected (and thus, will only open this project's support folder). You can change this by changing the `defaultToFirstProject` property of the script to `false`.