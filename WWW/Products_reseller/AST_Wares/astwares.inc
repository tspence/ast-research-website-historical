<!--#include file="../../../basic.inc"-->
<% 

awProductList = Array(Array("astwears.html","9741W","Sport Socks/Ladies'","$5.25"), _
                      Array("astwears.html","9741","Sport Socks/Men's","$5.25"), _
                      Array("astwears.html","9742","Blue/Green Hat","$5.50"), _
                      Array("astwears.html","9744","Denim Hat","$8.00"), _
                      Array("astwears.html","9745M","White Computer T-shirt","$6.75"), _
                      Array("astwears.html","9745L","White Computer T-shirt","$6.75"), _
                      Array("astwears.html","9745XL","White Computer T-shirt","$6.75"), _
                      Array("astwears.html","9745XXL","White Computer T-shirt","$8.75"), _
                      Array("astwears.html","9746M","White Computer Block T-shirt","$6.75"), _
                      Array("astwears.html","9746L","White Computer Block T-shirt","$6.75"), _
                      Array("astwears.html","9746XL","White Computer Block T-shirt","$6.75"), _
                      Array("astwears.html","9746XXL","White Computer Block T-shirt","$8.75"), _
                      Array("astwears.html","9747M","Natural Computer Block T-shirt","$6.75"), _
                      Array("astwears.html","9747L","Natural Computer Block T-shirt","$6.75"), _
                      Array("astwears.html","9747XL","Natural Computer Block T-shirt","$6.75"), _
                      Array("astwears.html","9747XXL","Natural Computer Block T-shirt","$8.75"), _
                      Array("astwears.html","9748M","Dark Teal Ribbed T-shirt","$10.00"), _
                      Array("astwears.html","9748L","Dark Teal Ribbed T-shirt","$10.00"), _
                      Array("astwears.html","9748XL","Dark Teal Ribbed T-shirt","$10.00"), _
                      Array("astwears.html","9748XXL","Dark Teal Ribbed T-shirt","$12.00"), _
                      Array("astwears.html","9749M","Navy Henley Shirt","$15.50"), _
                      Array("astwears.html","9749L","Navy Henley Shirt","$15.50"), _
                      Array("astwears.html","9749XL","Navy Henley Shirt","$15.50"), _
                      Array("astwears.html","9749XXL","Navy Henley Shirt","$18.00"), _
                      Array("astwears.html","9750M","Dark Ash Sweatshirt","$18.50"), _
                      Array("astwears.html","9750L","Dark Ash Sweatshirt","$18.50"), _
                      Array("astwears.html","9750XL","Dark Ash Sweatshirt","$18.50"), _
                      Array("astwears.html","9750XXL","Dark Ash Sweatshirt","$19.50"), _
                      Array("astwears.html","9751M","Natural Twill Shirt","$29.00"), _
                      Array("astwears.html","9751L","Natural Twill Shirt","$29.00"), _
                      Array("astwears.html","9751XL","Natural Twill Shirt","$29.00"), _
                      Array("astwears.html","9751XXL","Natural Twill Shirt","$29.00"), _
                      Array("astwears.html","9755M","Denim Jacket","$37.00"), _
                      Array("astwears.html","9755L","Denim Jacket","$37.00"), _
                      Array("astwears.html","9755XL","Denim Jacket","$37.00"), _
                      Array("astwears.html","9755XXL","Denim Jacket","$37.00"), _
                      Array("astwears.html","9723","Matchbook Tee Pack","$0.90"), _
                      Array("astwears.html","9724","Top Flight XL Golf Balls","$7.75"), _
                      Array("astwears.html","9725","Titlest DT Golf Balls","$9.50"), _
                      Array("astwears.html","9726","Auto Sunshade","$7.80"), _
                      Array("astwears.html","9727","Can Cooler","$1.80"), _
                      Array("astwears.html","9728","Cooler Jug","$4.95"), _
                      Array("astwears.html","9729","6-Pack Cooler","$14.00"), _
                      Array("astwears.html","9730","Golf Towel","$5.50"), _
                      Array("astwears.html","9743","Maroon Hat","$5.50"), _
                      Array("astwears.html","9752M","Maroon Polo Shirt","$15.00"), _
                      Array("astwears.html","9752L","Maroon Polo Shirt","$15.00"), _
                      Array("astwears.html","9752XL","Maroon Polo Shirt","$15.00"), _
                      Array("astwears.html","9752XXL","Maroon Polo Shirt","$16.00"), _
                      Array("astwears.html","9753M","Hunter Green Golf Shirt","$25.00"), _
                      Array("astwears.html","9753L","Hunter Green Golf Shirt","$25.00"), _
                      Array("astwears.html","9753XL","Hunter Green Golf Shirt","$25.00"), _
                      Array("astwears.html","9753XXL","Hunter Green Golf Shirt","$27.00"), _
                      Array("astwears.html","9754M","Tri-Color Polo Shirt","$27.00"), _
                      Array("astwears.html","9754L","Tri-Color Polo Shirt","$27.00"), _
                      Array("astwears.html","9754XL","Tri-Color Polo Shirt","$27.00"), _
                      Array("astwears.html","9754XXL","Tri-Color Polo Shirt","$29.00"), _
                      Array("astwears.html","9711","Bubble Memo Clip","$2.15"), _
                      Array("astwears.html","9712","Bubble Key Ring","$2.15"), _
                      Array("astwears.html","9713","Stress Relief Computer","$2.25"), _
                      Array("astwears.html","9714","Foam Puzzle Cube","$1.00"), _
                      Array("astwears.html","9715","Natural Wood Yo-Yo","$2.75"), _
                      Array("astwears.html","9716","Silver Prolite","$2.75"), _
                      Array("astwears.html","9717","Screwdriver Set","$3.95"), _
                      Array("astwears.html","9719","Silver Key Ring","$4.75"), _
                      Array("astwears.html","9720","Tire Gauge","$2.15"), _
                      Array("astwears.html","9721","Comfort Massager","$4.95"), _
                      Array("astwears.html","9722","Mag-lite","$14.75"), _
                      Array("astwears.html","9731","Commuter Mug","$1.75"), _
                      Array("astwears.html","9732","Ceramic Coffee Mug","$6.00"), _
                      Array("astwears.html","9733W","Women's Wrist Watch","$39.50"), _
                      Array("astwears.html","9733M","Men's Wrist Watch","$39.50"), _
                      Array("astwears.html","9734","Travel Tote","$13.00"), _
                      Array("astwears.html","9735","Briefcase","$24.00"), _
                      Array("astwears.html","9736","Duffle Bag","$28.50"), _
                      Array("astwears.html","9737","Balloons (priced each)","$0.17"), _
                      Array("astwears.html","9738","Trade Show Bag","$0.45"), _
                      Array("astwears.html","9739","Table Cover","$40.00"), _
                      Array("astwears.html","9740","Banner","$38.00"), _
                      Array("astwears.html","9760","Small Notepad","$0.75"), _
                      Array("astwears.html","9760","Large Notepad","$2.50"), _
                      Array("astwears.html","9701","Pencils","$0.30"), _
                      Array("astwears.html","9702","Pentel Ballpoint Pen","$0.95"), _
                      Array("astwears.html","9703","Uni Ball Pen","$2.25"), _
                      Array("astwears.html","9704","Softy Pen & Pencil Box Set","$2.85"), _
                      Array("astwears.html","9705","Chrome Pen & Pencil Set","$8.50"), _
                      Array("astwears.html","9706G","Green Rollerball Pen","$15.50"), _
                      Array("astwears.html","9706W","Wine Rollerball Pen","$15.50"), _
                      Array("astwears.html","9706B","Blue Rollerball Pen","$15.50"), _
                      Array("astwears.html","9707","Leather Mousepad","$11.50"), _
                      Array("astwears.html","9708","Calculator","$7.00"), _
                      Array("astwears.html","9709","Post-It Notepad","$0.70"), _
                      Array("astwears.html","9710","Notecards (pack of 25)","$7.95"), _
                      Array("astwears.html","9718","Paperclip Dispenser","$3.50"))

%>

