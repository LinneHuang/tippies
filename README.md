# Pre-work - **Tippie**

**Tippie** is a tip calculator application for iOS.

Submitted by: **Linne S. Huang**

Time spent: 
**8** hours spent in total =
**1.5** hours in the tutorial video + 
X hours in searching for OOO

## User Stories

The following **required** functionality is complete:

* [👌] User can enter **a bill amount**, choose **a tip percentage**, and see **the tip and total values**.

The following **optional** features are implemented:

* [👌] Custom font
* [👌] UI animations
* [👌] Making sure the keyboard is always **visible** and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [👌] List anything else that you can get done to improve the app functionality!

  - improved 1:
  - improved 2:

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

![tippies GIF](tippies_gif.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

- Why 

  ```swift
      @IBAction func onTap(sender: AnyObject) {
          view.endEditing(true)
      }
  ```

  will show the keyboard??

- ​

- Make background responsive to any size of device: I googled and checked stackoverflow, it seems "Auto-layout" is the solution. However, I still don't know how it works. :(


## License

    Copyright 2016 Linne S. Huang

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
    
        http://www.apache.org/licenses/LICENSE-2.0
    
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
