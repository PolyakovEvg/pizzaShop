
function add_item_to_cart(id){
    let key = `product_${id}`
    let x = window.localStorage.getItem(key)
    x = +x + 1
    window.localStorage.setItem(key, x)
    update_order()
    get__all_items_from_cart()
}

function get__all_items_from_cart (){
    let cnt = 0;
    for (let i = 0; i < window.localStorage.length; i++){
        let value = window.localStorage.getItem(window.localStorage.key(i))
        let key = window.localStorage.key(i)
        if(key.indexOf('product_')==0){
            cnt = cnt + +value
        }
    }
    const cart_icon = document.getElementById('cart')
    cart_icon.value = `Корзина: ${cnt}`

}
get__all_items_from_cart()

function get_string_order (){
    arr = []
    for(let i = 0; i < window.localStorage.length; i++){
    let key = window.localStorage.key(i)
    let value = window.localStorage.getItem(window.localStorage.key(i))
    arr.push(`${key}=${value}`)
    }
    return arr.join(',')
}

function update_order(){
    let order = get_string_order()
    let input = document.getElementById('order_data')
    let order_submit = document.getElementById('order_submit')
    input.value = order
    if (order_submit != null){
    order_submit.value=order
    }
}

update_order()

// clear cart

function clear_cart(){
    window.localStorage.clear()
    window.location.href = '/empty_cart'
}
