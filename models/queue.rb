#!/usr/bin/env ruby

require "data_mapper"

class Queue
  
  include DataMapper::Resource

  property :id,           Serial
  property :name,         String
  property :description,  String

  has n,  :tickets,
    :parent_key => [ :id ],
    :child_key  => [ :queue ]
end