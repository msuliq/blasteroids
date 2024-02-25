# Blasteroids

Blasteroids is a classic arcade game taking its root from the famous [Asteroid](http://www.classicgaming.cc/classics/asteroids/).
The game is implemented in C using [Allegro 5.0](http://alleg.sourceforge.net/) library.

## How to Play
To play the game, download the appropriate file for your operating system:

For Windows: `blasteroid.exe`
For Linux: `blasteroid_linux`
For macOS: `blasteroid_mac`

To run the game on Linux and macOS, follow these steps:

Open the terminal.
Navigate to the directory containing the downloaded executable.
Run the following command:

```bash
  ./blasteroid_mac
```

```bash
  ./blasteroid_linux
```

To play the game download respective file for your operating system:
  blasteroid.exe, blasteroid_linux or blasteroid_mac

To run the game on Linux and macOS, open the terminal, navigate to the directory with the downloaded executable and run
 ./ blasteroid_mac or blasteroid_linux

## About
[Tutorial](http://wiki.allegro.cc/) & [Manual](https://www.allegro.cc/manual/5/index.html) for Allegro 5

Structure of the code:

* asteroid.c: main adversaries,
* blast.c: a.k.a. bullet,
* spaceship.c: the main player,
* blastroids.c: core of the game,
* utils.c: mathematical primitives,
* test_collision.c: verifies collison feature in the game.

Enjoy playing Blasteroids!
