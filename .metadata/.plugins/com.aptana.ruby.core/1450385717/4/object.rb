class Object < BasicObject
  include Kernel

  ARGF = ARGF
  ARGV = []
  Addrinfo = Addrinfo
  ArgumentError = ArgumentError
  Array = Array
  BasicObject = BasicObject
  BasicSocket = BasicSocket
  Bignum = Bignum
  Binding = Binding
  CGI = CGI
  CROSS_COMPILING = nil
  Class = Class
  Comparable = Comparable
  Complex = Complex
  ConditionVariable = Thread::ConditionVariable
  Data = Data
  Date = Date
  DateTime = DateTime
  Delegator = Delegator
  Digest = Digest
  Dir = Dir
  ENV = {"SSH_AGENT_PID"=>"1889", "rvm_version"=>"1.26.11 (latest)", "SESSION_MANAGER"=>"local/portatil-pablo:@/tmp/.ICE-unix/1699,unix/portatil-pablo:/tmp/.ICE-unix/1699", "GNOME_DESKTOP_SESSION_ID"=>"this-is-deprecated", "XDG_SESSION_COOKIE"=>"94fdf68f4f4ae5e8739b7ceb548884c2-1454835145.536566-498103653", "GDMSESSION"=>"default", "MANDATORY_PATH"=>"/usr/share/gconf/default.mandatory.path", "PWD"=>"/home/pablo/Escritorio", "INSIDE_NEMO_PYTHON"=>"", "MY_RUBY_HOME"=>"/home/pablo/.rvm/rubies/ruby-2.2.1", "TEXTDOMAIN"=>"im-config", "_system_type"=>"Linux", "PATH"=>"/home/pablo/.rvm/gems/ruby-2.2.1/bin:/home/pablo/.rvm/gems/ruby-2.2.1@global/bin:/home/pablo/.rvm/rubies/ruby-2.2.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/pablo/.rvm/bin:/home/pablo/.rvm/bin", "XDG_CONFIG_DIRS"=>"/etc/xdg/xdg-default:/etc/xdg", "XDG_CURRENT_DESKTOP"=>"X-Cinnamon", "APTANA_VERSION"=>"3.6.2.1413590556", "XAUTHORITY"=>"/home/pablo/.Xauthority", "rvm_path"=>"/home/pablo/.rvm", "_system_version"=>"17.1", "XDG_SEAT"=>"seat0", "rvm_stored_umask"=>"0022", "WINDOWPATH"=>"8", "XDG_SESSION_ID"=>"c1", "MDM_LANG"=>"es_ES.UTF-8", "USERNAME"=>"pablo", "XDG_VTNR"=>"8", "MDMSESSION"=>"default", "GEM_PATH"=>"/home/pablo/.rvm/gems/ruby-2.2.1:/home/pablo/.rvm/gems/ruby-2.2.1@global", "GNOME_KEYRING_CONTROL"=>"/run/user/1000/keyring-YiKGrk", "SHLVL"=>"1", "_system_arch"=>"x86_64", "_system_name"=>"Mint", "TEXTDOMAINDIR"=>"/usr/share/locale/", "GDM_XSERVER_LOCATION"=>"local", "XDG_DATA_DIRS"=>"/usr/share/default:/usr/share/gnome:/usr/local/share/:/usr/share/:/usr/share/mdm/", "rvm_prefix"=>"/home/pablo", "MDM_XSERVER_LOCATION"=>"local", "LOGNAME"=>"pablo", "IRBRC"=>"/home/pablo/.rvm/rubies/ruby-2.2.1/.irbrc", "GPG_AGENT_INFO"=>"/run/user/1000/keyring-YiKGrk/gpg:0:1", "RUBY_VERSION"=>"ruby-2.2.1", "SSH_AUTH_SOCK"=>"/run/user/1000/keyring-YiKGrk/ssh", "DBUS_SESSION_BUS_ADDRESS"=>"unix:abstract=/tmp/dbus-Yb6wXFLahh,guid=b5978b6d3660f4aefd3e17ff56b705ca", "SHELL"=>"/bin/bash", "rvm_bin_path"=>"/home/pablo/.rvm/bin", "GEM_HOME"=>"/home/pablo/.rvm/gems/ruby-2.2.1", "DESKTOP_SESSION"=>"default", "DISPLAY"=>":0.0", "USER"=>"pablo", "HOME"=>"/home/pablo", "rvm_loaded_flag"=>"1", "DEFAULTS_PATH"=>"/usr/share/gconf/default.default.path", "rvm_user_install_flag"=>"1", "XDG_SESSION_DESKTOP"=>"default", "XDG_RUNTIME_DIR"=>"/run/user/1000", "LANG"=>"es_ES.UTF-8"}
  EOFError = EOFError
  Encoding = Encoding
  EncodingError = EncodingError
  Enumerable = Enumerable
  Enumerator = Enumerator
  Errno = Errno
  Etc = Etc
  Exception = Exception
  FALSE = false
  FalseClass = FalseClass
  Fcntl = Fcntl
  Fiber = Fiber
  FiberError = FiberError
  File = File
  FileTest = FileTest
  FileUtils = FileUtils
  Fixnum = Fixnum
  Float = Float
  FloatDomainError = FloatDomainError
  GC = GC
  Gem = Gem
  Hash = Hash
  IO = IO
  IOError = IOError
  IPSocket = IPSocket
  IndexError = IndexError
  Integer = Integer
  Interrupt = Interrupt
  Kernel = Kernel
  KeyError = KeyError
  LoadError = LoadError
  LocalJumpError = LocalJumpError
  Marshal = Marshal
  MatchData = MatchData
  Math = Math
  Method = Method
  Module = Module
  Monitor = Monitor
  MonitorMixin = MonitorMixin
  Mutex = Mutex
  NIL = nil
  NameError = NameError
  Net = Net
  NilClass = NilClass
  NoMemoryError = NoMemoryError
  NoMethodError = NoMethodError
  NotImplementedError = NotImplementedError
  Numeric = Numeric
  OUTPUT_PATH = "/home/pablo/workspace/Cursorails/.metadata/.plugins/com.aptana.ruby.core/1450385717/4/"
  Object = Object
  ObjectSpace = ObjectSpace
  OpenSSL = OpenSSL
  OptParse = OptionParser
  OptionParser = OptionParser
  Proc = Proc
  Process = Process
  Queue = Thread::Queue
  RUBY_COPYRIGHT = "ruby - Copyright (C) 1993-2015 Yukihiro Matsumoto"
  RUBY_DESCRIPTION = "ruby 2.2.1p85 (2015-02-26 revision 49769) [x86_64-linux]"
  RUBY_ENGINE = "ruby"
  RUBY_PATCHLEVEL = 85
  RUBY_PLATFORM = "x86_64-linux"
  RUBY_RELEASE_DATE = "2015-02-26"
  RUBY_REVISION = 49769
  RUBY_VERSION = "2.2.1"
  Random = Random
  Range = Range
  RangeError = RangeError
  Rational = Rational
  RbConfig = RbConfig
  Regexp = Regexp
  RegexpError = RegexpError
  Resolv = Resolv
  RubyVM = RubyVM
  RuntimeError = RuntimeError
  STDERR = IO.new
  STDIN = IO.new
  STDOUT = IO.new
  ScanError = StringScanner::Error
  ScriptError = ScriptError
  SecureRandom = SecureRandom
  SecurityError = SecurityError
  Signal = Signal
  SignalException = SignalException
  SimpleDelegator = SimpleDelegator
  SizedQueue = Thread::SizedQueue
  Socket = Socket
  SocketError = SocketError
  StandardError = StandardError
  StopIteration = StopIteration
  String = String
  StringIO = StringIO
  StringScanner = StringScanner
  Struct = Struct
  Symbol = Symbol
  SyntaxError = SyntaxError
  SystemCallError = SystemCallError
  SystemExit = SystemExit
  SystemStackError = SystemStackError
  TCPServer = TCPServer
  TCPSocket = TCPSocket
  TOPLEVEL_BINDING = #<Binding:0x00000000e2b288>
  TRUE = true
  TSort = TSort
  Tempfile = Tempfile
  Thread = Thread
  ThreadError = ThreadError
  ThreadGroup = ThreadGroup
  Time = Time
  Timeout = Timeout
  TimeoutError = Timeout::Error
  TracePoint = TracePoint
  TrueClass = TrueClass
  TypeError = TypeError
  UDPSocket = UDPSocket
  UNIXServer = UNIXServer
  UNIXSocket = UNIXSocket
  URI = URI
  UnboundMethod = UnboundMethod
  UncaughtThrowError = UncaughtThrowError
  ZeroDivisionError = ZeroDivisionError
  Zlib = Zlib
  fatal = nil



  protected


  private

  def DelegateClass(arg0)
  end

  def Digest(arg0)
  end

  def dir_names(arg0)
  end

  def file_name(arg0)
  end

  def get_classes
  end

  def grab_instance_method(arg0, arg1)
  end

  def print_args(arg0)
  end

  def print_instance_method(arg0, arg1)
  end

  def print_method(arg0, arg1, arg2, arg3, arg4, *rest)
  end

  def print_type(arg0)
  end

  def print_value(arg0)
  end

  def timeout(arg0, arg1, arg2, *rest)
  end

end
