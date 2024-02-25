# Compiler variables
CXX_mac = clang
CXX_linux = gcc
CXX_win = clang

CFLAGS = -Wall -O3
LDFLAGS = -L$(shell brew --prefix allegro)/lib -lallegro -lallegro_primitives -lallegro_audio -lallegro_acodec -lallegro_font -lallegro_ttf -lallegro_main
INCLUDE = -I$(shell brew --prefix allegro)/include/allegro5

# Object files
OBJS = blasteroids.o spaceship.o blast.o asteroid.o bbox.o utils.o

# Output files for different platforms
OUT_mac = blasteroid_mac # Output for macOS
OUT_linux = blasteroid_linux # Output for Linux
OUT_win = blasteroid.exe # Output for Windows

# Default target: build for all platforms
all: mac linux win

# Clean target
clean:
		rm -rf *.o $(OUT_mac) $(OUT_linux) $(OUT_win)

# macOS target
mac: $(OBJS)
		$(CXX_mac) $(OBJS) -o $(OUT_mac) $(INCLUDE) $(CFLAGS) $(LDFLAGS)

# Linux target
linux: $(OBJS)
		$(CXX_linux) $(OBJS) -o $(OUT_linux) $(INCLUDE) $(CFLAGS) $(LDFLAGS)

# Windows target
win: $(OBJS)
		$(CXX_win) $(OBJS) -o $(OUT_win) $(INCLUDE) $(CFLAGS) $(LDFLAGS)

# Compilation rules for object files
blasteroids.o: blasteroids.c
		$(CXX_mac) -c blasteroids.c $(INCLUDE) $(CFLAGS)

spaceship.o: spaceship.c
		$(CXX_mac) -c spaceship.c $(INCLUDE) $(CFLAGS)

blast.o: blast.c
		$(CXX_mac) -c blast.c $(INCLUDE) $(CFLAGS)

asteroid.o: asteroid.c
		$(CXX_mac) -c asteroid.c $(INCLUDE) $(CFLAGS)

bbox.o: bbox.c
		$(CXX_mac) -c bbox.c $(INCLUDE) $(CFLAGS)

utils.o: utils.c
		$(CXX_mac) -c utils.c $(INCLUDE) $(CFLAGS)
