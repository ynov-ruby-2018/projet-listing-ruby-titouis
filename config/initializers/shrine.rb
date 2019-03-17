# frozen_string_literal: true

require 'shrine'
require 'shrine/storage/file_system'

Shrine.storages = {
  cache: Shrine::Storage::FileSystem.new('public', prefix: 'uploads/cache'), # temporary
  store: Shrine::Storage::FileSystem.new('public', prefix: 'uploads'), # permanent
}

Shrine.plugin :sequel # or :activerecord
Shrine.plugin :cached_attachment_data # for retaining the cached file across form redisplay
Shrine.plugin :restore_cached_data # re-extract metadata when attaching a cached file
