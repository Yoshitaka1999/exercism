class LogLineParser
  def initialize(line)
    @line_ary = line.split(":")
  end

  def message
    @line_ary[1].strip
  end

  def log_level
    @line_ary[0].slice(/[A-Za-z]+/).downcase
  end

  def reformat
    log_line = "#{message} (#{log_level})"
  end
end
