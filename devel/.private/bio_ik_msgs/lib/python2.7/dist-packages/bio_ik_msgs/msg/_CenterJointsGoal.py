# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from bio_ik_msgs/CenterJointsGoal.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class CenterJointsGoal(genpy.Message):
  _md5sum = "ccbc658a4d415bcd21aba09a68bf23dd"
  _type = "bio_ik_msgs/CenterJointsGoal"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# If set to true, the goal will be primary goal (like eg. position goals)
# If set to false, this goal will always have lower priority than the primary goals
bool primary
"""
  __slots__ = ['weight','primary']
  _slot_types = ['float64','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       weight,primary

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(CenterJointsGoal, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.weight is None:
        self.weight = 0.
      if self.primary is None:
        self.primary = False
    else:
      self.weight = 0.
      self.primary = False

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
      buff.write(_get_struct_dB().pack(_x.weight, _x.primary))
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
      end = 0
      _x = self
      start = end
      end += 9
      (_x.weight, _x.primary,) = _get_struct_dB().unpack(str[start:end])
      self.primary = bool(self.primary)
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
      buff.write(_get_struct_dB().pack(_x.weight, _x.primary))
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
      end = 0
      _x = self
      start = end
      end += 9
      (_x.weight, _x.primary,) = _get_struct_dB().unpack(str[start:end])
      self.primary = bool(self.primary)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_dB = None
def _get_struct_dB():
    global _struct_dB
    if _struct_dB is None:
        _struct_dB = struct.Struct("<dB")
    return _struct_dB
