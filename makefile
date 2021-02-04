PROJECT_NAME = Aryabhatta-Team1

BUILD = build

SRC = main1.c\
SRC/bhavya.c\
SRC/Karthik.c\
SRC/nisha.c\
SRC/phani.c\
SRC/rajath.c\
SRC/sairaj.c\
SRC/santhrupthi.c\
SRC/shubham.c\
SRC/thanu.c\

INC	= -Iinc

PROJECT_OUTPUT = $(BUILD)/$(PROJECT_NAME).out

DOCUMENTATION_OUTPUT = documentation/html

$(PROJECT_NAME):all

.PHONY: run clean test  doc all

all: $(SRC) $(BUILD)
	gcc $(SRC) $(INC) -o $(PROJECT_OUTPUT).out
  
run:$(PROJECT_NAME)
	./$(PROJECT_OUTPUT).out
	
doc:
	make -C ./documentation
	
clean:
	rm -rf $(BUILD) $(DOCUMENTATION_OUTPUT)
  
  
 $(BUILD):
	mkdir build