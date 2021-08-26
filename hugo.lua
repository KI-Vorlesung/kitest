-- Remove TeX/LaTeX RawInlines
function RawInline(el)
    if el.format:match 'tex' or el.format:match 'latex' then
        return {}
    end
end

-- Remove TeX/LaTeX RawBlocks
function RawBlock(el)
    if el.format:match 'tex' or el.format:match 'latex' then
        return {}
    end
end

-- Encapsulate TeX Math
function Math(el)
    if el.mathtype:match 'InlineMath' then
        return {
            pandoc.RawInline('markdown', '<span>'),
            el,
            pandoc.RawInline('markdown', '</span>')
          }
    end
    if el.mathtype:match 'DisplayMath' then
        return {
            pandoc.RawInline('markdown', '<div>'),
            el,
            pandoc.RawInline('markdown', '</div>')
          }
    end
end


-- Replace "showme" Div with "expand" shortcode
function Div(el)
    if el.classes[1] == "showme" then
        return
            { pandoc.RawBlock('markdown', '{{% expand "Show Me" %}}'), pandoc.RawBlock('markdown', '<div class="showme">') } ..
            el.content ..
            { pandoc.RawBlock('markdown', '</div>'), pandoc.RawBlock('markdown', '{{% /expand %}}') }
    end
end


-- Replace "bsp" Span with "button" shortcode
function Span(el)
    if el.classes[1] == "bsp" then
        return
            { pandoc.RawInline('markdown', '{{% button %}}') } ..
            el.content ..
            { pandoc.RawInline('markdown', '{{% /button %}}') }
    end
end
