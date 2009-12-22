class ParentsController < ApplicationController
  def index
    @parent_types = Array.new
    @parent_retry = Array.new
    @parent_classes = Parent.subclasses_of(Parent)
    @parent_classes.each do |subclass_thing|
      @parent_types << subclass_thing.name
    end
    @parent_classes = Daughter.subclasses_of(Parent)
    @parent_classes = Son.subclasses_of(Parent)
    @parent_classes = Daughter.subclasses_of(Parent)
    @parent_classes.each do |subclass_thing|
      @parent_retry << subclass_thing.name
    end
  end
end
