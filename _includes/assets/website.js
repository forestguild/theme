{% if page.path != 'mythic.html' %}
$(function () {
    $('table').tablesorter({
        theme: "dark",
        widthFixed: true,
        widgets: ["filter"],
    });
    $('[data-toggle="tooltip"]').tooltip();
    {% if site.data.ui.media.stream.id %}
    $.ajax('https://api.twitch.tv/helix/streams?user_login={{ site.data.ui.media.stream.users | join: '&user_login=' }}', {
        cache: true,
        beforeSend: function(xhr) {
            xhr.setRequestHeader('Client-ID', '{{ site.data.ui.media.stream.id }}');
        }
    }).done(function(data){
        if(data.data.length > 0) {
            $('.streaming_now').html(data.data.length + '*');
        }
    });
    {% endif %}
});
{% endif %}

/* Wowhead tooltips config */
var whTooltips = {
    colorLinks: true,
    iconizeLinks: true,
    renameLinks: true,
    iconSize: 'small'
};

{% if site.ui.analytics.yandex %}
/* Yandex.Metrics goals */
setTimeout('yaCounter{{ site.analytics.yandex }}.reachGoal("1min_pageview");', 60000);
{% endif %}
