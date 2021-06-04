

function discordlib.structures.channel(client, channel, guild)

    function channel.send(message = !err, callback)
        client.sendMessage(channel.id, message, callback)
    end

    function channel.getWebhooks(callback)
        client.getChannelWebhooks(channel.id, callback)
    end    
    
    function channel.createWebhook(name = !err, avatar, callback)
        client.createWebhook(channel.id, name, avatar, callback)
    end    
    
    function channel.deleteWebhook(webhookID = !err, callback)
        client.deleteWebhook(channelID, callback)
    end

    function channel.setName(name = !err, callback)
        client.modifyChannel(channel.id, {name = name}, callback)
    end

    function channel.setNSFW(nsfw = !err, callback)
        client.modifyChannel(channel.id, {nsfw = nsfw}, callback)
    end

    function channel.setTopic(topic = !err, callback)
        client.modifyChannel(channel.id, {topic = topic}, callback)
    end

    // Only iterables may be used in a ListType ???
    //function channel.setPosition(position = !err, callback)
    //    client.modifyGuildChannel(guild.id, {id = channel.id, position = position}, callback)
    //end

    //function channel.setParent(parentID = !err, callback)
    //    client.modifyGuildChannel(guild.id, {id = channel.id, parent_id = parentID}, callback)
    //end

    return channel
end