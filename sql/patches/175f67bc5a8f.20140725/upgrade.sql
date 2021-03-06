-- create table if not exists userToDeviceMap (userId varchar, deviceId varchar, name varchar, date date);
-- create table if not exists deviceInfo (deviceId varchar unique, lockable boolean, loggedin boolean, lastExchange timestamp, hawkSecret varchar, pushurl varchar, accepts varchar, accesstoken varchar);
-- create table if not exists pendingCommands (id bigserial, deviceId varchar, time timestamp, cmd varchar, type varchar);
-- create table if not exists position (id bigserial, deviceId varchar, time  timestamp, latitude real, longitude real, altitude real, accuracy real);
-- create or replace function update_time() returns trigger as $$ begin new.lastexchange = now(); return new; end; $$ language 'plpgsql';
-- drop trigger if exists update_le on deviceinfo;
-- create trigger update_le before update on deviceinfo for each row execute procedure update_time();
-- create table if not exists meta (key varchar, value varchar);
-- create table if not exists nonce (key varchar, val varchar, time timestamp);
-- create index "usertodevicemap_userid_idx" on userToDeviceMap (userId);
-- create index "usertodevicemap_deviceid_idx" on userToDeviceMap (deviceId);
-- create unique index "usertodevicemap_userid_deviceid_idx" on userToDeviceMap (userId, deviceId);
-- create index "deviceinfo_deviceid_idx" on deviceInfo (deviceId);
-- create index "pendingcommands_deviceid_idx" on pendingCommands (deviceId);
-- create index "position_deviceid_idx" on position (deviceId);
-- create index "meta_key_idx" on meta (key);
-- create index "nonce_key_idx" on nonce (key);
-- create index "nonce_time_idx" on nonce (time);
-- set time zone utc;

select 1 from meta;
