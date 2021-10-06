#!/usr/bin/env bats

@test "canControlVolume" {
  source ./Aufgabe6.sh "test"
  initVol=$(getVolume)
  setVolume 60
  vol=$(getVolume)
  [ "$vol" -eq 60 ]
  setVolume $initVol
}