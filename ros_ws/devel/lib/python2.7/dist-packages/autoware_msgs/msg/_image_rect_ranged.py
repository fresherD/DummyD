# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from autoware_msgs/image_rect_ranged.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import autoware_msgs.msg

class image_rect_ranged(genpy.Message):
  _md5sum = "3781b4778925185f71f990932766044c"
  _type = "autoware_msgs/image_rect_ranged"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """image_rect rect
float32 range
float32 min_height
float32 max_height

================================================================================
MSG: autoware_msgs/image_rect
int32 x
int32 y
int32 height
int32 width
float32 score
"""
  __slots__ = ['rect','range','min_height','max_height']
  _slot_types = ['autoware_msgs/image_rect','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       rect,range,min_height,max_height

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(image_rect_ranged, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.rect is None:
        self.rect = autoware_msgs.msg.image_rect()
      if self.range is None:
        self.range = 0.
      if self.min_height is None:
        self.min_height = 0.
      if self.max_height is None:
        self.max_height = 0.
    else:
      self.rect = autoware_msgs.msg.image_rect()
      self.range = 0.
      self.min_height = 0.
      self.max_height = 0.

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
      buff.write(_get_struct_4i4f().pack(_x.rect.x, _x.rect.y, _x.rect.height, _x.rect.width, _x.rect.score, _x.range, _x.min_height, _x.max_height))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.rect is None:
        self.rect = autoware_msgs.msg.image_rect()
      end = 0
      _x = self
      start = end
      end += 32
      (_x.rect.x, _x.rect.y, _x.rect.height, _x.rect.width, _x.rect.score, _x.range, _x.min_height, _x.max_height,) = _get_struct_4i4f().unpack(str[start:end])
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
      buff.write(_get_struct_4i4f().pack(_x.rect.x, _x.rect.y, _x.rect.height, _x.rect.width, _x.rect.score, _x.range, _x.min_height, _x.max_height))
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
      if self.rect is None:
        self.rect = autoware_msgs.msg.image_rect()
      end = 0
      _x = self
      start = end
      end += 32
      (_x.rect.x, _x.rect.y, _x.rect.height, _x.rect.width, _x.rect.score, _x.range, _x.min_height, _x.max_height,) = _get_struct_4i4f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4i4f = None
def _get_struct_4i4f():
    global _struct_4i4f
    if _struct_4i4f is None:
        _struct_4i4f = struct.Struct("<4i4f")
    return _struct_4i4f
