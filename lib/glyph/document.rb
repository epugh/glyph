#!/usr/bin/env ruby

module Glyph

	class Document

		ESCAPES = [
			['\\]', ']'], 
			['\\[', '['],
			['\\=', '='],
			['\\.', ''],
			['\\\\', '\\'],
			['\\|', '|']
		]

		attr_reader :bookmarks, :placeholders

		def initialize(tree, context)
			raise RuntimeError, "Invalid syntax tree" unless tree.respond_to? :evaluate
			@tree = tree
			@context = context
			@bookmarks = {}
			@placeholders = {}
			@state = :new
		end


		def structure
			raise RuntimeError, "Document is not analyzed" unless analyzed? || finalized?
			@tree.hashnode
		end

		def inherit_from(document)
			@bookmarks = document.bookmarks
			@placeholders = document.placeholders
		end

		def placeholder(&block)
			key = "$$$__placeholder##{@placeholders.length+1}__$$$".to_sym
			raise RuntimeError, "Placeholder '#{key}' already exists" if @placeholders.has_key? key
			@placeholders[key] = block
			key
		end

		def bookmark?(key)
			@bookmarks[key.to_sym]
		end

		def bookmark(hash)
			ident = hash[:id].to_sym
			hash[:id] = ident
			@bookmarks[ident] = hash
		end

		def analyze
			raise RuntimeError, "Document is #{@state}" if analyzed? || finalized?
			@context[:document] = self
			@output = @tree.evaluate @context, nil
			@state = :analyzed
		end

		def finalize
			raise RuntimeError, "Document has not been analyzed" unless analyzed?
			ESCAPES.each{|e| @output.gsub! e[0], e[1]}
			@placeholders.each_pair {|key, value| @output.gsub! key.to_s, value.call(self).to_s}
			@state = :finalized
		end

		def output
			raise RuntimeError, "Document is not finalized" unless finalized?
			@output
		end

		def new?
			@state == :new
		end

		def analyzed?
			@state == :analyzed
		end

		def finalized?
			@state == :finalized
		end

	end
	
end