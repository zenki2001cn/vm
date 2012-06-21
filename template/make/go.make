GG = 8g
LL = 8l
SRC_DIR= ./
OBJ_DIR= ./
OBJ_EXT= .8
CSRC_EXT= .go

EXE_TARGET = ???
OBJECTS = $(OBJ_DIR)???$(OBJ_EXT) $(OBJ_DIR)main$(OBJ_EXT)
STATIC_LIB = 

all: $(EXE_TARGET) $(OBJECTS)

$(EXE_TARGET): $(OBJECTS)
	@echo
	@echo "Compiling $< ==> $@..."
	$(LL) -o $@ main.8 $(STATIC_LIB)

$(OBJ_DIR)%$(OBJ_EXT): $(SRC_DIR)%$(CSRC_EXT)
	@echo
	@echo "Compiling $< ==> $@..."
	$(GG)  -o $@ $< 

clean:
	-rm -f $(EXE_TARGET) $(OBJECTS) *~

