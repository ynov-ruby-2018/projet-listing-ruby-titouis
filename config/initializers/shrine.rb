# frozen_string_literal: true

require 'shrine'
require 'shrine/storage/file_system'

Shrine.storages = {
  cache: Shrine::Storage::FileSystem.new('app', prefix: 'assets/images/cache'), # temporary
  store: Shrine::Storage::FileSystem.new('app', prefix: 'assets/images'), # permanent
}

Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data # for retaining the cached file across form redisplay
Shrine.plugin :restore_cached_data # re-extract metadata when attaching a cached file
Shrine.plugin :mongoid
