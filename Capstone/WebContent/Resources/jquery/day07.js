var container = document.getElementById('map');
var options = {
    center: new daum.maps.LatLng(37.558455, 127.049068),
    level: 3
};

var map = new daum.maps.Map(container, options);

var marker = new daum.maps.Marker({ 
    position: map.getCenter() 
}); 
marker.setMap(map);

var geocoder = new daum.maps.services.Geocoder();

$('#map ul.mapzoom > li').click(function(){
    var level = map.getLevel(); // 1 ~ 14
    if($(this).index()){ // 1 minus zoom-out
        if(level < 12){
            map.setLevel(level + 1);
        }
    } else { // 0 plus zoom-in
        if(level > 1) {
            map.setLevel(level - 1);
        }
    }
});


searchAddrFromCoords(map.getCenter(), displayCenterInfo);

// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
daum.maps.event.addListener(map, 'idle', function() {
    searchAddrFromCoords(map.getCenter(), displayCenterInfo);
});

function searchAddrFromCoords(coords, callback) {
    // 좌표로 행정동 주소 정보를 요청합니다
    geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
}

// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
function displayCenterInfo(result, status) {
    //console.log(result);
    if (status === daum.maps.services.Status.OK) {
        for(var i = 0; i < result.length; i++) {
            // 행정동의 region_type 값은 'H' 이므로
            if (result[i].region_type === 'H') {
                $('.breadcrumbs').html(result[i].address_name);
                break;
            }
        }
    }    
}

$('input[name="keyword"]').keydown(function(event){
    if(event.keyCode == 13) {
        // enter-key
        $('#search').trigger('click');
    }
});

//#search button click tourAPI Fetch
$('#search').click(function(){
    var keyword = $('input[name="keyword"]').val();
    if(keyword.length > 1){
        $.ajax({
            url: 'http://api.visitkorea.or.kr/openapi/service/rest/KorService/searchKeyword',
            dataType: 'xml',
            method: 'get',
            data: {
                ServiceKey:'Dpva6vJJ1NWDNGeibLpRCDAGFK8SpHKi+Xz0cYf5UbV88z1wfNpKdrRYDUVfR/CTgZ3K3zPzGLLQJcifSI/CLg==',
                keyword:keyword,
                MobileOS:'ETC',
                MobileApp:'TourAPI3.0_Guide'
            }
        }).done(function(data){
            var items = $(data).find('item');
            var rs = [];
            $.each(items, function(){
                var title = $(this).find('title').text();
                var lat = $(this).find('mapy').text();
                var lng = $(this).find('mapx').text();

                rs.push('<li class="list-group-item" data-lat="'+lat+'" data-lng="'+lng+'">'+title+'</li>');
            });
            $('#tourlist').html('<ul class="list-group">'+rs.join('')+'</ul>');
        });
    }
});

// dynamic event
$(document).on('click', 'li.list-group-item', function(){
    //console.log($(this).data('lat'), $(this).data('lng'));
    $(this).siblings().removeClass('active').end().addClass('active');

    var latlng = new daum.maps.LatLng($(this).data('lat'), $(this).data('lng'));
    map.setCenter(latlng);

    marker.setPosition(latlng);
});