# XcodeSnippets

This repository contains Xcode code snippets that can be used to quickly insert helpful skeletons for common iOS patterns into your project.

## Installation

To add these snippets to Xcode, follow these steps:

1. Ensure that you have quit Xcode before beginning this process.
2. Either clone this repo OR copy the `.codesnippet` files AND the `copy-snippets.sh` script to the same folder.
3. Make the script executable by running `chmod +x copy-snippets.sh`, if needed.
4. Run the script by executing `./copy-snippets.sh`. This copies all `.codesnippet` files to Xcode's default code snippet storage location.
5. Open Xcode and verify that the snippets are loaded by typing any of the shortcuts below and looking for the associated snippet (look for ones with the "User" tag as marked by Xcode.)

## Usage

To use the snippets, you can type the shortcuts as listed below and the snippet will come up in the autocomplete menu (provided the scope is correct.) You may also open the Snippets library (Shift+Command+L) and drag the snippet you want into your code, or click it to insert it to where your cursor is.

The following snippets are available for use from this repo:

| Snippet name | Shortcut |
| ------------ | -------- |
| Deprecation Warning | `deprecated` |
| DispatchQueue Async | `dispatchasync` |
| DispatchQueue Async After | `dispatchasyncafter` |
| MARK Comment | `markcomment` |
| UITapGestureRecognizer | `tapgesturerecognizer` |

For cells with multiple placeholders with the same name, use Option+Command+E to highlight them all at once.

## Contributing

If you create your own snippets within Xcode and want to add them to your local copy of this repo, run `./copy-snippets.sh -r`. This copies snippets from Xcode's default location to the folder where the script resides. 

Note that by default, the `.codesnippet` files are named and identified with UUIDs. It is recommended to rename them to be more descriptive before you commit.

Renaming the local snippet will not affect the copy in Xcode's storage. You will have to manually resolve this discrepancy by deleting the original snippet (use the filepath in the `copy-snippets` script) and running the `copy-snippets` script again to put the new one in its place (otherwise you will end up with duplicates.)

## Troubleshooting

### Xcode is crashing all of a sudden when I try to use these snippets

Xcode may crash if the identifiers for the snippets collide with existing system ones. Ensure any custom snippets you use do not already exist as a system snippet.
