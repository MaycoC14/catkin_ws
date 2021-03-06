# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from robotnik_msgs/SafetyModuleStatus.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import robotnik_msgs.msg

class SafetyModuleStatus(genpy.Message):
  _md5sum = "301f2f2b06f84bb7bbe649c08f21a4ff"
  _type = "robotnik_msgs/SafetyModuleStatus"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# robot safety mode
string SAFE=safe
#string OVERRIDABLE=overridable
#string EMERGENCY=emergency
string LASER_MUTE=laser_mute

string OM_AUTO=auto
string OM_MANUAL=manual
string OM_MAINTENANCE=maintenance


string operation_mode
string safety_mode
bool emergency_stop        # if e-stop is pressed
bool safety_stop           # if system is stopped due to safety system
bool lasers_on_standby     # if lasers don't have power
float64 current_speed       # current speed measured by safety system

robotnik_msgs/LaserMode lasers_mode
robotnik_msgs/LaserStatus[] lasers_status

================================================================================
MSG: robotnik_msgs/LaserMode
string STANDARD=standard
string DOCKING_STATION=docking_station
string CART=cart
string CART_DOCKING_CART=cart_docking_cart
string DOCKING_CART=docking_cart
string REDUCED=reduced
string INVALID=invalid

string name

================================================================================
MSG: robotnik_msgs/LaserStatus
string name
bool detecting_obstacles
bool contaminated
bool free_warning
# one input per each warning zone.
# first areas are closer to the robot (i.e. more restrictive)
bool[] warning_zones 
"""
  # Pseudo-constants
  SAFE = 'safe'
  LASER_MUTE = 'laser_mute'
  OM_AUTO = 'auto'
  OM_MANUAL = 'manual'
  OM_MAINTENANCE = 'maintenance'

  __slots__ = ['operation_mode','safety_mode','emergency_stop','safety_stop','lasers_on_standby','current_speed','lasers_mode','lasers_status']
  _slot_types = ['string','string','bool','bool','bool','float64','robotnik_msgs/LaserMode','robotnik_msgs/LaserStatus[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       operation_mode,safety_mode,emergency_stop,safety_stop,lasers_on_standby,current_speed,lasers_mode,lasers_status

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SafetyModuleStatus, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.operation_mode is None:
        self.operation_mode = ''
      if self.safety_mode is None:
        self.safety_mode = ''
      if self.emergency_stop is None:
        self.emergency_stop = False
      if self.safety_stop is None:
        self.safety_stop = False
      if self.lasers_on_standby is None:
        self.lasers_on_standby = False
      if self.current_speed is None:
        self.current_speed = 0.
      if self.lasers_mode is None:
        self.lasers_mode = robotnik_msgs.msg.LaserMode()
      if self.lasers_status is None:
        self.lasers_status = []
    else:
      self.operation_mode = ''
      self.safety_mode = ''
      self.emergency_stop = False
      self.safety_stop = False
      self.lasers_on_standby = False
      self.current_speed = 0.
      self.lasers_mode = robotnik_msgs.msg.LaserMode()
      self.lasers_status = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.operation_mode
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.safety_mode
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3Bd().pack(_x.emergency_stop, _x.safety_stop, _x.lasers_on_standby, _x.current_speed))
      _x = self.lasers_mode.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.lasers_status)
      buff.write(_struct_I.pack(length))
      for val1 in self.lasers_status:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_3B().pack(_x.detecting_obstacles, _x.contaminated, _x.free_warning))
        length = len(val1.warning_zones)
        buff.write(_struct_I.pack(length))
        pattern = '<%sB'%length
        buff.write(struct.Struct(pattern).pack(*val1.warning_zones))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.lasers_mode is None:
        self.lasers_mode = robotnik_msgs.msg.LaserMode()
      if self.lasers_status is None:
        self.lasers_status = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.operation_mode = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.operation_mode = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.safety_mode = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.safety_mode = str[start:end]
      _x = self
      start = end
      end += 11
      (_x.emergency_stop, _x.safety_stop, _x.lasers_on_standby, _x.current_speed,) = _get_struct_3Bd().unpack(str[start:end])
      self.emergency_stop = bool(self.emergency_stop)
      self.safety_stop = bool(self.safety_stop)
      self.lasers_on_standby = bool(self.lasers_on_standby)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.lasers_mode.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.lasers_mode.name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.lasers_status = []
      for i in range(0, length):
        val1 = robotnik_msgs.msg.LaserStatus()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 3
        (_x.detecting_obstacles, _x.contaminated, _x.free_warning,) = _get_struct_3B().unpack(str[start:end])
        val1.detecting_obstacles = bool(val1.detecting_obstacles)
        val1.contaminated = bool(val1.contaminated)
        val1.free_warning = bool(val1.free_warning)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sB'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.warning_zones = s.unpack(str[start:end])
        val1.warning_zones = list(map(bool, val1.warning_zones))
        self.lasers_status.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.operation_mode
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self.safety_mode
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_3Bd().pack(_x.emergency_stop, _x.safety_stop, _x.lasers_on_standby, _x.current_speed))
      _x = self.lasers_mode.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.lasers_status)
      buff.write(_struct_I.pack(length))
      for val1 in self.lasers_status:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1
        buff.write(_get_struct_3B().pack(_x.detecting_obstacles, _x.contaminated, _x.free_warning))
        length = len(val1.warning_zones)
        buff.write(_struct_I.pack(length))
        pattern = '<%sB'%length
        buff.write(val1.warning_zones.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.lasers_mode is None:
        self.lasers_mode = robotnik_msgs.msg.LaserMode()
      if self.lasers_status is None:
        self.lasers_status = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.operation_mode = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.operation_mode = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.safety_mode = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.safety_mode = str[start:end]
      _x = self
      start = end
      end += 11
      (_x.emergency_stop, _x.safety_stop, _x.lasers_on_standby, _x.current_speed,) = _get_struct_3Bd().unpack(str[start:end])
      self.emergency_stop = bool(self.emergency_stop)
      self.safety_stop = bool(self.safety_stop)
      self.lasers_on_standby = bool(self.lasers_on_standby)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.lasers_mode.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.lasers_mode.name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.lasers_status = []
      for i in range(0, length):
        val1 = robotnik_msgs.msg.LaserStatus()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        _x = val1
        start = end
        end += 3
        (_x.detecting_obstacles, _x.contaminated, _x.free_warning,) = _get_struct_3B().unpack(str[start:end])
        val1.detecting_obstacles = bool(val1.detecting_obstacles)
        val1.contaminated = bool(val1.contaminated)
        val1.free_warning = bool(val1.free_warning)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sB'%length
        start = end
        s = struct.Struct(pattern)
        end += s.size
        val1.warning_zones = numpy.frombuffer(str[start:end], dtype=numpy.bool, count=length)
        val1.warning_zones = list(map(bool, val1.warning_zones))
        self.lasers_status.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3B = None
def _get_struct_3B():
    global _struct_3B
    if _struct_3B is None:
        _struct_3B = struct.Struct("<3B")
    return _struct_3B
_struct_3Bd = None
def _get_struct_3Bd():
    global _struct_3Bd
    if _struct_3Bd is None:
        _struct_3Bd = struct.Struct("<3Bd")
    return _struct_3Bd
