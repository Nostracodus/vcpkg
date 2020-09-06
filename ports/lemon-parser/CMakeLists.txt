cmake_minimum_required(VERSION 3.0)
project(lemon)

add_executable(lemon lemon.c)
install(TARGETS lemon DESTINATION tools CONFIGURATIONS Release)
