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


-- Handle citations
-- use "#id_KEY" as target => needs be be defined in the document
-- i.e. the shortcode/partial "bib.html" needs to create this targets
local keys = {}

function Cite(el)
    -- translate a citation into a link
    local citation_to_link = function(citation)
        local id = citation.id
        local suffix = pandoc.utils.stringify(citation.suffix)
        -- remember this id, needs to be added to the meta data
        keys[id] = true
        -- create a link into the current document
        return pandoc.Link("[" .. id .. suffix .. "]", "#id_" .. id)
    end

    -- replace citation with list of links
    return el.citations:map(citation_to_link)
end

function Meta(md)
    -- meta data "readings"
    md.readings = md.readings or pandoc.MetaList(pandoc.List())

    -- has a "readings" element "x" a "key" with value "k"?
    local has_id = function(k)
        return function(x) return pandoc.utils.stringify(x.key) == k end
    end

    -- collect all "keys" which are not in "readings"
    for k, _ in pairs(keys) do
        if #md.readings:filter(has_id(k)) == 0 then
            md.readings:insert(pandoc.MetaMap{key = pandoc.MetaInlines{pandoc.Str(k)}})
        end
    end

    return md
end
