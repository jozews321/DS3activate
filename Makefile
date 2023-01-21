
#
# DS3activate
#

CC=clang
#CXX = clang++

EXE = DS3activate
SOURCE=ds3activate.c
LIBS += -framework OpenGL -framework Cocoa -framework IOKit -framework CoreVideo
CFLAGS = -I/usr/local/include -I/opt/local/include

##---------------------------------------------------------------------
## BUILD RULES
##---------------------------------------------------------------------

all: $(EXE) package_app
	@echo Build complete
	 
$(EXE): 
	$(CC) -o  $(EXE) $(SOURCE) $(CXXFLAGS) $(LIBS)

package_app:
	mkdir -p DS3activate.app/Contents/{MacOS,Resources}
	cp DS3activate DS3activate.app/Contents/MacOS/DS3activate
	cp Info.plist DS3activate.app/Contents/
	cp ds3.sh DS3activate.app/Contents/MacOS/ds3
	chmod +x DS3activate.app/Contents/MacOS/ds3
	cp AppIcon.icns DS3activate.app/Contents/Resources 

clean:
	rm -f $(EXE) $(OBJS)
