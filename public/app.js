var editable = document.querySelectorAll('.update');
[].forEach.call(editable, function(node){
  node.addEventListener('click', function(){
    this.contentEditable = true;
  }, false);
  node.addEventListener('input', function(){
    var parentId = this.parentNode.id;
    this.parentNode.classList.add('dirty');

    url = '/update/' + parentId + '/';
    payload = {message: this.textContent};
    console.log('--> sending', payload);

    Jaxx.post(url, payload, function(){
      console.log('<-- response', this.responseText);
    }, function(){
      console.log('ajax failure', this);
    });
  }, false);
});
