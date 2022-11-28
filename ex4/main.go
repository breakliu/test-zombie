package main

import reaper "github.com/ramr/go-reaper"

import (
  "fmt"
  "time"
)

func main() {
  go reaper.Reap()

  fmt.Println("hello!")
  time.Sleep(3600 * time.Second)
}

