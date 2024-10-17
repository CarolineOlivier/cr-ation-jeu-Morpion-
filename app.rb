require 'bundler'
Bundler.require

$:.unshift File.expandpath("./../lib", _FILE)
require 'board'
require 'boardCase'
require 'game'
require 'player'
require 'show'

# Game.  new or run  ?