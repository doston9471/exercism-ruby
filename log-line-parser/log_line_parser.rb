class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.gsub(/^\[.*?\]:\s*/, '').strip
  end

  def log_level
    @line.scan(/^\[(.*?)\]:/).flatten.first&.downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
