# Pre-work - TipCalculator

**TipCalculator** is a tip calculator application for iOS.

Submitted by: **Nikhil Iyer**

Time spent: **2** hours spent in total

## User Stories

The following **required** functionality is complete:

* [Yes] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [Yes] Settings page to change the default tip percentage.
* [No] UI animations
* [Yes] Remembering the bill amount across app restarts (if <10mins)
* [No] Using locale-specific currency and currency thousands separators.
* [Yes] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- Added a new segmented view to show how much each person has to pay
- Added a navigation controller

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='https://media.giphy.com/media/3oFzmrGeGG0VE9CHE4/giphy.gif' />


## Notes

- Creating a new view controller and the navigation controller was fairly simple.
- I had difficulty in updating my default tip and using user defaults, but I got it to work.
- I could not get default tip to update automatically. I need to change the segmented view first and then only is the default tip changed

## License

    Copyright [2017] [Nikhil Iyer]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
