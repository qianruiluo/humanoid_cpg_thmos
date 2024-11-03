# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from bio_ik_msgs/BalanceGoal.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class BalanceGoal(genpy.Message):
  _md5sum = "a41c41e95b53d1061e0af70f43304d5b"
  _type = "bio_ik_msgs/BalanceGoal"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# Weight of the current goal
# Goals with a higher weight will have a stronger influence than goals with a smaller weight
float64 weight

# The center of gravity will be pulled above this target point
geometry_msgs/Point target

# Gravity vector (optional)
geometry_msgs/Vector3 axis

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z"""
  __slots__ = ['weight','target','axis']
  _slot_types = ['float64','geometry_msgs/Point','geometry_msgs/Vector3']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       weight,target,axis

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BalanceGoal, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.weight is None:
        self.weight = 0.
      if self.target is None:
        self.target = geometry_msgs.msg.Point()
      if self.axis is None:
        self.axis = geometry_msgs.msg.Vector3()
    else:
      self.weight = 0.
      self.target = geometry_msgs.msg.Point()
      self.axis = geometry_msgs.msg.Vector3()

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
      buff.write(_get_struct_7d().pack(_x.weight, _x.target.x, _x.target.y, _x.target.z, _x.axis.x, _x.axis.y, _x.axis.z))
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
      if self.target is None:
        self.target = geometry_msgs.msg.Point()
      if self.axis is None:
        self.axis = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 56
      (_x.weight, _x.target.x, _x.target.y, _x.target.z, _x.axis.x, _x.axis.y, _x.axis.z,) = _get_struct_7d().unpack(str[start:end])
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
      buff.write(_get_struct_7d().pack(_x.weight, _x.target.x, _x.target.y, _x.target.z, _x.axis.x, _x.axis.y, _x.axis.z))
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
      if self.target is None:
        self.target = geometry_msgs.msg.Point()
      if self.axis is None:
        self.axis = geometry_msgs.msg.Vector3()
      end = 0
      _x = self
      start = end
      end += 56
      (_x.weight, _x.target.x, _x.target.y, _x.target.z, _x.axis.x, _x.axis.y, _x.axis.z,) = _get_struct_7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
