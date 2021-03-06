# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from mavros_msgs/CamIMUStamp.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class CamIMUStamp(genpy.Message):
  _md5sum = "ac22af9031671dd528a56f12d0986660"
  _type = "mavros_msgs/CamIMUStamp"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# IMU-Camera synchronisation data

time frame_stamp		# Timestamp when the camera was triggered
int32 frame_seq_id		# Sequence number of the image frame
"""
  __slots__ = ['frame_stamp','frame_seq_id']
  _slot_types = ['time','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       frame_stamp,frame_seq_id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CamIMUStamp, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.frame_stamp is None:
        self.frame_stamp = genpy.Time()
      if self.frame_seq_id is None:
        self.frame_seq_id = 0
    else:
      self.frame_stamp = genpy.Time()
      self.frame_seq_id = 0

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
      _x = self
      buff.write(_get_struct_2Ii().pack(_x.frame_stamp.secs, _x.frame_stamp.nsecs, _x.frame_seq_id))
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
      if self.frame_stamp is None:
        self.frame_stamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.frame_stamp.secs, _x.frame_stamp.nsecs, _x.frame_seq_id,) = _get_struct_2Ii().unpack(str[start:end])
      self.frame_stamp.canon()
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
      _x = self
      buff.write(_get_struct_2Ii().pack(_x.frame_stamp.secs, _x.frame_stamp.nsecs, _x.frame_seq_id))
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
      if self.frame_stamp is None:
        self.frame_stamp = genpy.Time()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.frame_stamp.secs, _x.frame_stamp.nsecs, _x.frame_seq_id,) = _get_struct_2Ii().unpack(str[start:end])
      self.frame_stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2Ii = None
def _get_struct_2Ii():
    global _struct_2Ii
    if _struct_2Ii is None:
        _struct_2Ii = struct.Struct("<2Ii")
    return _struct_2Ii
