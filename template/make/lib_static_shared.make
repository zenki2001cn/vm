SRC_DIR= src/
OBJ_DIR= obj/
LIB_DIR= lib/
C_FLAGS= -I./

OBJ_EXT= .o
CXXSRC_EXT= .cpp
CSRC_EXT= .c
LIB_EXT= .a
SHARED_LIB_EXT=.so
H_EXT= .h

OBJECTS = $(OBJ_DIR)???$(OBJ_EXT)

LIB_TARGET = $(LIB_DIR)???$(LIB_EXT)

SHARED_LIB_TARGET = $(LIB_DIR)???$(SHARED_LIB_EXT)

$(OBJ_DIR)%$(OBJ_EXT): $(SRC_DIR)%$(CXXSRC_EXT)
	@echo
	@echo "Compiling $< ==> $@..."
	$(CXX) $(INC) $(C_FLAGS) -c $< -o $@

$(OBJ_DIR)%$(OBJ_EXT): $(SRC_DIR)%$(CSRC_EXT)
	@echo
	@echo "Compiling $< ==> $@..."
	$(CC)  $(INC) $(C_FLAGS) -c $< -o $@

all:$(LIB_TARGET)

$(LIB_TARGET): $(OBJECTS)
all: $(OBJECTS)
	@echo
	$(AR) rc $(LIB_TARGET) $(OBJECTS)
	$(CC) -shared -fPIC $(OBJECTS) -o $(SHARED_LIB_TARGET)
	@echo "ok"
clean:
	rm -f $(LIB_TARGET) $(OBJECTS) $(SHARED_LIB_TARGET)
