# FPS increase at UITableView

## Use estimated table view height
> Providing a height of rows can improve the loading speed of table view. If the table contains automatic height calculation, it might be expensive to calculate all their heights when the table loads. Estimation allows you to defer some of the cost of geometry calculation from load time to scrolling time.

## Do not call methods on cellForRowAt

## Avoid using transparent colors

## Avoid using NSAttributedString
