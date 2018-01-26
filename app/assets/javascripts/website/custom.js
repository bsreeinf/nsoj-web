document.addEventListener("turbolinks:load", function() {

    var data = $('#pricing').data("services")

    $('form select#starter').on('change', function() {
        var package_name = $(this.children[this.selectedIndex]).text().toLowerCase();
        $item_desc = $(this).parent().parent().parent();
        if (package_name == "basic") {
            $item_desc.find('.pricing-features ul li:first span').text(data[0]["no_of_sessions"])
            $item_desc.find('.pricing-features ul li:nth-child(2) span').text(data[0]["no_of_days_valid"])
            $item_desc.find('.pricing-num span.value').text(data[0]["price"])
        } else if (package_name == "value") {
            $item_desc.find('.pricing-features ul li:first span').text(data[1]["no_of_sessions"])
            $item_desc.find('.pricing-features ul li:nth-child(2) span').text(data[1]["no_of_days_valid"])
            $item_desc.find('.pricing-num span.value').text(data[1]["price"])
        } else if (package_name == "optima") {
            $item_desc.find('.pricing-features ul li:first span').text(data[2]["no_of_sessions"])
            $item_desc.find('.pricing-features ul li:nth-child(2) span').text(data[2]["no_of_days_valid"])
            $item_desc.find('.pricing-num span.value').text(data[2]["price"])
        } else {
            alert("invalid select")
        }
    });


    $('select#standard').on('change', function() {
        var package_name = $(this.children[this.selectedIndex]).text().toLowerCase();
        $item_desc = $(this).parent().parent().parent();
        if (package_name == "silver") {
            $item_desc.find('.pricing-features ul li:first span').text(data[3]["no_of_sessions"])
            $item_desc.find('.pricing-features ul li:nth-child(2) span').text(data[3]["no_of_days_valid"])
            $item_desc.find('.pricing-num span.value').text(data[3]["price"])
        } else if (package_name == "gold") {
            $item_desc.find('.pricing-features ul li:first span').text(data[4]["no_of_sessions"])
            $item_desc.find('.pricing-features ul li:nth-child(2) span').text(data[4]["no_of_days_valid"])
            $item_desc.find('.pricing-num span.value').text(data[4]["price"])
        } else if (package_name == "platinum") {
            $item_desc.find('.pricing-features ul li:first span').text(data[5]["no_of_sessions"])
            $item_desc.find('.pricing-features ul li:nth-child(2) span').text(data[5]["no_of_days_valid"])
            $item_desc.find('.pricing-num span.value').text(data[5]["price"])
        } else {
            alert("invalid select")
        }
    });

    $('select#professional').on('change', function() {
        var package_name = $(this.children[this.selectedIndex]).text().toLowerCase();
        $item_desc = $(this).parent().parent().parent();
        if (package_name == "birch") {
            $item_desc.find('.pricing-features ul li:first span').text(data[6]["no_of_sessions"])
            $item_desc.find('.pricing-features ul li:nth-child(2) span').text(data[6]["no_of_days_valid"])
            $item_desc.find('.pricing-num span.value').text(data[6]["price"])
        } else if (package_name == "maple") {
            $item_desc.find('.pricing-features ul li:first span').text(data[7]["no_of_sessions"])
            $item_desc.find('.pricing-features ul li:nth-child(2) span').text(data[7]["no_of_days_valid"])
            $item_desc.find('.pricing-num span.value').text(data[7]["price"])
        } else if (package_name == "oak") {
            $item_desc.find('.pricing-features ul li:first span').text(data[8]["no_of_sessions"])
            $item_desc.find('.pricing-features ul li:nth-child(2) span').text(data[8]["no_of_days_valid"])
            $item_desc.find('.pricing-num span.value').text(data[8]["price"])
        } else {
            alert("invalid select")
        }
    });

});
