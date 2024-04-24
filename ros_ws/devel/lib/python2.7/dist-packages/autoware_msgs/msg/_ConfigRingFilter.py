# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from autoware_msgs/ConfigRingFilter.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ConfigRingFilter(genpy.Message):
  _md5sum = "8e90a2e7ee37c2ae4a3ddd2fa191ba07"
  _type = "autoware_msgs/ConfigRingFilter"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32 ring_div
float32 voxel_leaf_size
float32 measurement_range
"""
  __slots__ = ['ring_div','voxel_leaf_size','measurement_range']
  _slot_types = ['int32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ring_div,voxel_leaf_size,measurement_range

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ConfigRingFilter, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.ring_div is None:
        self.ring_div = 0
      if self.voxel_leaf_size is None:
        self.voxel_leaf_size = 0.
      if self.measurement_range is None:
        self.measurement_range = 0.
    else:
      self.ring_div = 0
      self.voxel_leaf_size = 0.
      self.measurement_range = 0.

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
      buff.write(_get_struct_i2f().pack(_x.ring_div, _x.voxel_leaf_size, _x.measurement_range))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 12
      (_x.ring_div, _x.voxel_leaf_size, _x.measurement_range,) = _get_struct_i2f().unpack(str[start:end])
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
      buff.write(_get_struct_i2f().pack(_x.ring_div, _x.voxel_leaf_size, _x.measurement_range))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 12
      (_x.ring_div, _x.voxel_leaf_size, _x.measurement_range,) = _get_struct_i2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i2f = None
def _get_struct_i2f():
    global _struct_i2f
    if _struct_i2f is None:
        _struct_i2f = struct.Struct("<i2f")
    return _struct_i2f
