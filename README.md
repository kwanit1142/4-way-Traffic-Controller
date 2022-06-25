# 4-way Traffic Controller

## Overview

![Screenshot (1305)](https://user-images.githubusercontent.com/54277039/175791291-ba52962f-f836-4967-9dcb-bd208cac29a3.png)

Prepare the suitable Design for “4-Way Traffic Controller” , where the Scenarios are as follows:-

● East-West (road A-B) and North-South (road C-D) pathways are defined with “light_B” and “light_A” Light Signal sets respectively.

● Green Signal will remain till 5 seconds.

● Yellow Signal and Red Signal will remain till 1 seconds.

## States Description

![Screenshot (1304)](https://user-images.githubusercontent.com/54277039/175791293-a75e4173-c2d6-4907-a94c-c01a5dda23af.png)

Here, 6 states are taken :-

● S0 - AB green, CD red

● S1 – AB yellow, CD red

● S2 – AB red, CD red

● S3 – CD green, AB red

● S4 – CD yellow , AB red

● S5 – CD red, AB red

## State Diagram for “Traffic Controller”

![Screenshot (1303)](https://user-images.githubusercontent.com/54277039/175791295-3a30e4cc-94ef-4f48-b8ae-5cf64fcc37dc.png)

## Pin Diagram for “4-Way Traffic Controller”

![Screenshot (1302)](https://user-images.githubusercontent.com/54277039/175791296-abfdbe10-c4f8-4435-9b8d-3f2b40c90681.png)

