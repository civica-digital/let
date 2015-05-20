require 'jekyll_asset_pipeline'

module JekyllAssetPipeline
  class LessConverter < JekyllAssetPipeline::Converter
    require 'less'

    def self.filetype
      '.less'
    end

    def convert
      parser = Less::Parser.new  :paths => ['../_assets/less']
      return parser.parse(@content).to_css
    end
  end

  class CssTagTemplate < JekyllAssetPipeline::Template
    def self.filetype
      '.css'
    end

    def html
      "<link href='#{@path}/#{@filename}' rel='stylesheet' type='text/css' media='screen' />\n"
    end
  end
end
