# Pre-work - Tips

Tips is a tip calculator application for iOS.

Submitted by: Anthony Consoli

Time spent: 3 hours spent in total

## User Stories

The following **required** functionality is complete:
* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- An additional function was added to the app so that a bill can be split between multiple people. An additional field was added to check the amount of people who will be splitting the bill, the app then calculates the tip amount from each person and the total amount from each person.

## Video Walkthrough 


1. First Open the app called tips.
![walk1](https://cloud.githubusercontent.com/assets/6476199/11826703/0095f102-a355-11e5-88fe-f4cc53307073.gif)

2. Click on the text field next to bill amount and enter the amount, then click off of the keyboard.
![walk2](https://cloud.githubusercontent.com/assets/6476199/11826705/0291aece-a355-11e5-8ede-b3ddd686f83d.gif)

3. Select the amount of ways you would like to split the bill (current default is 0)
![walk3](https://cloud.githubusercontent.com/assets/6476199/11826707/04dbf2d4-a355-11e5-8141-b64a2a00c7f3.gif)


4.Select the percentage you would like to tip (current default is 20%)
![walk4](https://cloud.githubusercontent.com/assets/6476199/11826710/06778748-a355-11e5-8d9b-fea2cd62a17b.gif)


5. Click settings to set the default values for the app. (These changes persist each time you open and close the app)
![walk5](https://cloud.githubusercontent.com/assets/6476199/11826713/081b00de-a355-11e5-840d-e4e09d6c605e.gif)
![walk6](https://cloud.githubusercontent.com/assets/6476199/11826719/0b543a0e-a355-11e5-843a-846b1d30e208.gif)

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

I did not find any significant challenges while building the app. The main challenge was learning my way around xCode as I don’t have much experience with it.

## License

    Copyright [2015] [Anthony Consoli]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.