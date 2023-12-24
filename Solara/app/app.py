import solara
import solara.website
from pathlib import Path

@solara.component
def Page():
    image_path = "/home/solara-app/public/Face.png"
    solara.Image(image_path, "100%")