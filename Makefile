##
## EPITECH PROJECT, 2025
## RunnerGame
## File description:
## Makefile
##

SRC =	main.cpp	\

NAME = RunnerGame
CXXFLAGS = -Wall -Wextra
OBJ = $(SRC:.cpp=.o)
CXX ?= g++
CPPFLAGS = -iquote./includes

all: $(NAME)

$(NAME): $(OBJ)
	$(CXX) -o $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

debug : CXXFLAGS += -Werror
debug : CXXFLAGS += -g3
debug : fclean all

re: fclean all

.PHONY: clean re debug fclean all