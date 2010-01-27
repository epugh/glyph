# Autogenerated from a Treetop grammar. Edits may be lost.


module GlyphLanguage
  include Treetop::Runtime

  def root
    @root || :expression
  end

  def _nt_expression
    start_index = index
    if node_cache[:expression].has_key?(index)
      cached = node_cache[:expression][index]
      @index = cached.interval.end if cached
      return cached
    end

    s0, i0 = [], index
    loop do
      i1 = index
      r2 = _nt_escaping_macro
      if r2
        r1 = r2
      else
        r3 = _nt_macro
        if r3
          r1 = r3
        else
          r4 = _nt_escaped_text
          if r4
            r1 = r4
          else
            @index = i1
            r1 = nil
          end
        end
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    r0 = instantiate_node(GlyphSyntaxNode,input, i0...index, s0)

    node_cache[:expression][start_index] = r0

    r0
  end

  module EscapingMacro0
    def macro_name
      elements[0]
    end

    def text
      elements[2]
    end

  end

  def _nt_escaping_macro
    start_index = index
    if node_cache[:escaping_macro].has_key?(index)
      cached = node_cache[:escaping_macro][index]
      @index = cached.interval.end if cached
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_macro_name
    s0 << r1
    if r1
      if has_terminal?('[=', false, index)
        r2 = instantiate_node(SyntaxNode,input, index...(index + 2))
        @index += 2
      else
        terminal_parse_failure('[=')
        r2 = nil
      end
      s0 << r2
      if r2
        r3 = _nt_text
        s0 << r3
        if r3
          if has_terminal?('=]', false, index)
            r4 = instantiate_node(SyntaxNode,input, index...(index + 2))
            @index += 2
          else
            terminal_parse_failure('=]')
            r4 = nil
          end
          s0 << r4
        end
      end
    end
    if s0.last
      r0 = instantiate_node(MacroNode,input, i0...index, s0)
      r0.extend(EscapingMacro0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:escaping_macro][start_index] = r0

    r0
  end

  module Macro0
    def macro_name
      elements[0]
    end

    def expression
      elements[2]
    end

  end

  def _nt_macro
    start_index = index
    if node_cache[:macro].has_key?(index)
      cached = node_cache[:macro][index]
      @index = cached.interval.end if cached
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_macro_name
    s0 << r1
    if r1
      if has_terminal?('[', false, index)
        r2 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure('[')
        r2 = nil
      end
      s0 << r2
      if r2
        r3 = _nt_expression
        s0 << r3
        if r3
          if has_terminal?(']', false, index)
            r4 = instantiate_node(SyntaxNode,input, index...(index + 1))
            @index += 1
          else
            terminal_parse_failure(']')
            r4 = nil
          end
          s0 << r4
        end
      end
    end
    if s0.last
      r0 = instantiate_node(MacroNode,input, i0...index, s0)
      r0.extend(Macro0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:macro][start_index] = r0

    r0
  end

  module EscapedText0
  end

  module EscapedText1
    def macro_name
      elements[0]
    end

  end

  module EscapedText2
  end

  def _nt_escaped_text
    start_index = index
    if node_cache[:escaped_text].has_key?(index)
      cached = node_cache[:escaped_text][index]
      @index = cached.interval.end if cached
      return cached
    end

    s0, i0 = [], index
    loop do
      i1 = index
      i2, s2 = index, []
      if has_terminal?('\\', false, index)
        r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure('\\')
        r3 = nil
      end
      s2 << r3
      if r3
        if index < input_length
          r4 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure("any character")
          r4 = nil
        end
        s2 << r4
      end
      if s2.last
        r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
        r2.extend(EscapedText0)
      else
        @index = i2
        r2 = nil
      end
      if r2
        r1 = r2
      else
        i5, s5 = index, []
        i6 = index
        i7 = index
        i8, s8 = index, []
        r9 = _nt_macro_name
        s8 << r9
        if r9
          i10 = index
          if has_terminal?('[', false, index)
            r11 = instantiate_node(SyntaxNode,input, index...(index + 1))
            @index += 1
          else
            terminal_parse_failure('[')
            r11 = nil
          end
          if r11
            r10 = r11
          else
            if has_terminal?('[=', false, index)
              r12 = instantiate_node(SyntaxNode,input, index...(index + 2))
              @index += 2
            else
              terminal_parse_failure('[=')
              r12 = nil
            end
            if r12
              r10 = r12
            else
              @index = i10
              r10 = nil
            end
          end
          s8 << r10
        end
        if s8.last
          r8 = instantiate_node(SyntaxNode,input, i8...index, s8)
          r8.extend(EscapedText1)
        else
          @index = i8
          r8 = nil
        end
        if r8
          r7 = r8
        else
          i13 = index
          if has_terminal?(']', false, index)
            r14 = instantiate_node(SyntaxNode,input, index...(index + 1))
            @index += 1
          else
            terminal_parse_failure(']')
            r14 = nil
          end
          if r14
            r13 = r14
          else
            if has_terminal?('=]', false, index)
              r15 = instantiate_node(SyntaxNode,input, index...(index + 2))
              @index += 2
            else
              terminal_parse_failure('=]')
              r15 = nil
            end
            if r15
              r13 = r15
            else
              @index = i13
              r13 = nil
            end
          end
          if r13
            r7 = r13
          else
            @index = i7
            r7 = nil
          end
        end
        if r7
          r6 = nil
        else
          @index = i6
          r6 = instantiate_node(SyntaxNode,input, index...index)
        end
        s5 << r6
        if r6
          if index < input_length
            r16 = instantiate_node(SyntaxNode,input, index...(index + 1))
            @index += 1
          else
            terminal_parse_failure("any character")
            r16 = nil
          end
          s5 << r16
        end
        if s5.last
          r5 = instantiate_node(SyntaxNode,input, i5...index, s5)
          r5.extend(EscapedText2)
        else
          @index = i5
          r5 = nil
        end
        if r5
          r1 = r5
        else
          @index = i1
          r1 = nil
        end
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    if s0.empty?
      @index = i0
      r0 = nil
    else
      r0 = instantiate_node(TextNode,input, i0...index, s0)
    end

    node_cache[:escaped_text][start_index] = r0

    r0
  end

  module Text0
  end

  module Text1
    def macro_name
      elements[0]
    end

  end

  module Text2
  end

  def _nt_text
    start_index = index
    if node_cache[:text].has_key?(index)
      cached = node_cache[:text][index]
      @index = cached.interval.end if cached
      return cached
    end

    s0, i0 = [], index
    loop do
      i1 = index
      i2, s2 = index, []
      if has_terminal?('\\', false, index)
        r3 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure('\\')
        r3 = nil
      end
      s2 << r3
      if r3
        if index < input_length
          r4 = instantiate_node(SyntaxNode,input, index...(index + 1))
          @index += 1
        else
          terminal_parse_failure("any character")
          r4 = nil
        end
        s2 << r4
      end
      if s2.last
        r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
        r2.extend(Text0)
      else
        @index = i2
        r2 = nil
      end
      if r2
        r1 = r2
      else
        i5, s5 = index, []
        i6 = index
        i7 = index
        i8, s8 = index, []
        r9 = _nt_macro_name
        s8 << r9
        if r9
          if has_terminal?('[=', false, index)
            r10 = instantiate_node(SyntaxNode,input, index...(index + 2))
            @index += 2
          else
            terminal_parse_failure('[=')
            r10 = nil
          end
          s8 << r10
        end
        if s8.last
          r8 = instantiate_node(SyntaxNode,input, i8...index, s8)
          r8.extend(Text1)
        else
          @index = i8
          r8 = nil
        end
        if r8
          r7 = r8
        else
          if has_terminal?('=]', false, index)
            r11 = instantiate_node(SyntaxNode,input, index...(index + 2))
            @index += 2
          else
            terminal_parse_failure('=]')
            r11 = nil
          end
          if r11
            r7 = r11
          else
            @index = i7
            r7 = nil
          end
        end
        if r7
          r6 = nil
        else
          @index = i6
          r6 = instantiate_node(SyntaxNode,input, index...index)
        end
        s5 << r6
        if r6
          if index < input_length
            r12 = instantiate_node(SyntaxNode,input, index...(index + 1))
            @index += 1
          else
            terminal_parse_failure("any character")
            r12 = nil
          end
          s5 << r12
        end
        if s5.last
          r5 = instantiate_node(SyntaxNode,input, i5...index, s5)
          r5.extend(Text2)
        else
          @index = i5
          r5 = nil
        end
        if r5
          r1 = r5
        else
          @index = i1
          r1 = nil
        end
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    if s0.empty?
      @index = i0
      r0 = nil
    else
      r0 = instantiate_node(TextNode,input, i0...index, s0)
    end

    node_cache[:text][start_index] = r0

    r0
  end

  def _nt_macro_name
    start_index = index
    if node_cache[:macro_name].has_key?(index)
      cached = node_cache[:macro_name][index]
      @index = cached.interval.end if cached
      return cached
    end

    s0, i0 = [], index
    loop do
      if has_terminal?('\G[^\\[\\]\\|\\\\\\s]', true, index)
        r1 = true
        @index += 1
      else
        r1 = nil
      end
      if r1
        s0 << r1
      else
        break
      end
    end
    if s0.empty?
      @index = i0
      r0 = nil
    else
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
    end

    node_cache[:macro_name][start_index] = r0

    r0
  end

end

class GlyphLanguageParser < Treetop::Runtime::CompiledParser
  include GlyphLanguage
end

