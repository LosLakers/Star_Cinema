function addHidden(form, key, value, id) {
    var input = document.createElement('input');
    input.type = 'hidden';
    input.name = key;
    input.value = value;
    if (id !== '') {
        input.id = id;
    }
    form.appendChild(input);
}
function addSubmit(form, key, value) {
    var button = document.createElement('input');
    button.type = 'submit';
    button.form = key;
    button.value = value;
    button.className += 'btn btn-success';
    form.appendChild(button);
}

function removeElement(el) {
    el.parentNode.removeChild(el);
}