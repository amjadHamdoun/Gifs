# Gifs Test

Steps I took to improve performance:
1 Use ListViewBuilder because it builds and renders only the items that appear on the screen.
2 Stop animations and dispose of controllers when getting dispose the Screen.
3 Fetch data via pagination because you need to see some data and not all data at once.
