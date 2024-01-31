require_relative '../../../automated_init'

context "Array" do
  context "Construction" do
    context "Class Indexer Generic" do
      context "Root Namespace Type Parameter" do
        type_parameter = Controls::Class::Root.example
        collection_class = Collection::Array[type_parameter]

        instance = collection_class.new

        comment "Type Parameter: #{type_parameter.inspect}"
        comment "Collection Type Parameter: #{instance.type_parameter.inspect}"
        comment "Collection Class: #{collection_class.inspect}"

        test "The index value is the collection's type parameter" do
          assert(instance.type_parameter == type_parameter)
        end

        context "Class Name" do
          context do
            control_type_parameter_name = type_parameter.name

            test "Is the type parameter name" do
              assert(collection_class.name.end_with?(control_type_parameter_name))
            end
          end

          context do
            control_namespace_name = "Collection::Array"

            test "Is in the Collection::Array namespace" do
              assert(collection_class.name.start_with?(control_namespace_name))
            end
          end
        end
      end
    end
  end
end
