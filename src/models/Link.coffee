Ryggrad = require("ryggrad")

class Link extends Ryggrad.Model
  @key 'url',           String
  @key "comment",       String
  @key 'title',         String
  @key 'hasMeta',       Boolean
  @key 'images',        Array
  @key 'image_widths',  Array
  @key 'image_heights', Array
  @key 'type',          String

module.exports = Link
