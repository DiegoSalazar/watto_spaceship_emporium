class Presenter
  attr_reader :object, :view_context
  delegate :class, to: :@object

  def initialize(object, view_context)
    @object = object
    @view_context = view_context
  end

  def method_missing(name, *args, &block)
    @object.respond_to?(name) ? @object.send(name, *args, &block) : super
  end

  def respond_to_missing?(name, include_private = false)
    @object.respond_to?(name) || super
  end
end
