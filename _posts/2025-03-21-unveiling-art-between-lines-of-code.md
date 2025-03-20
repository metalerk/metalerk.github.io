---
layout: mpost
title: "Unveiling Art Between Lines of Code"
description: "Exploring the subtle intersection between art, coding, and creative algorithms through digital visual art."
author: metalerk
date: 2025-03-21 00:51:00 +/-0000
categories:
  - Creative Coding
  - Digital Art
  - Software Development
  - Algorithmic Art
tags:
  - python
  - opencv
  - generative art
  - creative process
  - digital aesthetics
permalink: /unveiling-art-between-lines-of-code/

---

Recently, I had the privilege of collaborating with a dear friend and creative accomplice: the multifaceted, enigmatic, and ever-dazzling **Milo Miranda**. Together, we are on the verge of unveiling a piece of digital visual art at Amsterdam's **Vondelbunker**—a project unlike anything I've had the chance to be part of before, singular in its pulse and resonance.

This experience has led me to ponder the delicate, almost weightless boundaries between art and software development. Are they truly such distant realms? Even within the tech industry, there are artists who sculpt lines of code with the same precision and sensibility as a painter or poet, crafting what we often refer to as masterpieces. In the world of Python, for instance, there's even a term for this kind of elegance: _pythonic code_—clear, graceful, almost lyrical in its simplicity.

Our piece is titled **“Concreto en Juego”.** It draws its breath from the city's relentless heartbeat and from the possibility of finding sanctuary in the unexpected—a glimmer of refuge amidst a world where the perfection of the Netherlands quietly imposes invisible limits. The work emerges as a game of resistance; a playground where body, matter, and code converse freely, without barriers, without rigid contours.

Inevitably, this entire process has become a mirror—an invitation to pause and look closely at my own creative path, to trace how I shape and carve ideas, whether within a digital canvas or the invisible architecture of a program.


## The Creative Coding Process

My creative coding process always begins with immersing myself in the core idea or challenge at hand. I think of it as _"the question”_: what is it that I am tasked to resolve, unveil, or bring to life?

This question becomes the anchor, the starting point from which I can abstract and shape an algorithm, much like sketching the rough outlines of a solution before filling in the details.

The algorithm, initially imagined in pseudocode, acts as a blueprint, a conceptual framework ready to be translated into a formal language. In this case, I turn to **Python**, chosen not only for its flexibility and versatility but also for its fluidity; an interpreted language that invites constant experimentation, refinement, and spontaneity.

Leveraging the power of the **OpenCV library**, I've woven together a system that overlays one or multiple images onto video frames, guided by the recognition of specific color ranges. A kind of digital choreography, where colors serve as cues and triggers for visual layering.


## The Palette (HSV Color Ranges)

We are essentially defining a painter's palette upfront:

```python
COLOR_RANGES = {
    "yellow": {
        "lower": np.array([20, 100, 100]),
        "upper": np.array([30, 255, 255])
    },
    "orange": {
        "lower": np.array([10, 100, 100]),
        "upper": np.array([20, 255, 255])
    },
    "green": {
        "lower": np.array([40, 40, 40]),
        "upper": np.array([80, 255, 255])
    },
    "neon_yellow": {
        "lower": np.array([10, 80, 80]),
        "upper": np.array([20, 255, 255])
    },
    "neon_green": {
        "lower": np.array([40, 150, 150]),
        "upper": np.array([85, 255, 255])
    },
    "lime_neon": {
        "lower": np.array([30, 80, 200]),
        "upper": np.array([40, 130, 255])
    },
}
```

Each HSV range represents a vivid stroke of color we target, like a digital brush that's tuned precisely to capture specific pigments in motion. The choice of neon, lime, and classic greens/yellows feels like an intentional nod toward vibrant, synthetic, almost futuristic aesthetics. We aren't just detecting color; but curating a color mood.


## Composition and Layering

At its core, the code is about overlaying layers:

- **Base layer**: the original video.
- **Mid-layer**: the color masks, delicate, ghostlike.
- **Foreground**: the overlay images, scaled and applied precisely where the colors invite them.

The care in aligning overlays based on contours and bounding boxes is akin to how a collage artist carefully pastes cutouts over painted backgrounds. The boundary checks, offsets, and centering reveal a respect for symmetry and balance, ensuring overlays don't spill over but fit perfectly, almost like visual choreography.


## Light & Shadow (Gamma Correction)

The `apply_gamma_correction()` function feels like the artist adjusting exposure on a canvas:

```python
look_up_table = np.array([((i / 255.0) ** (1.0 / gamma)) * 255 for i in np.arange(0, 256)])
```

Subtle, optional, but essential if brightness shifts feel "off." It gives the artist's brush finer control over how the audience perceives light, making sure nothing is unintentionally overexposed or dull. It's almost photographic. A darkroom touch.



## Rhythm & Motion

The `while-loop` processing frames is like an animation process frame-by-frame. Each frame goes through detection, overlay, blending, etc. (like flipping through pages of an intricate flipbook, except automated).

The print statements, the progress bar, and the preview window are our performance space, inviting the artist to see the piece evolve in real-time.


## Minimalist, Efficient, Geometric

The way we store the `video_settings` in tuples:

```python
video_settings = (
    ("01", ["F", "F", "F"], 1.5, ["green", "yellow", "lime_neon"]),
    ("02", ["A", "A"], 1.5, ["green", "lime_neon"]),
    ("03", ["B"], 1.5, ["orange"]),
    ("04", ["C"], 1.5, ["orange"]),
    ("05", ["D", "D"], 1.5, ["green", "lime_neon"]),
)
```

Feels modular and mathematical. Like arranging building blocks or setting up parameters for a generative art piece. It's minimal, clean, yet holds infinite potential combinations depending on how many overlays and colors we want to mix.


## The Essence

This is **algorithmic art**. It's a structured symphony of detection, masking, layering, and lighting tweaks, yet behind that rigid mathematical backbone lies freedom. Freedom to remix colors, swap overlays, play with gamma, and render something aesthetically unique every single time.

Through this intersection of art and technology, we are reminded that creativity thrives not only in open canvases but equally within structured lines of beautifully written code.
