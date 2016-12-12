require 'rubygems'
require 'crack'

xml = Crack::XML.parse(File.read(ARGV[0]))

def xmlkey (xml)
    xml.each do |key,value|
        puts key
        if value.is_a?(Hash)
            xmlkey(value)
        end
    end
end

xmlkey(xml)
