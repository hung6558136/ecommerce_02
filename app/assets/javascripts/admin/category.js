var category = {
  initialize: function () {
    $('#btn-create-category').click(function (event) {
      event.preventDefault();
      category.show_create_category_modal();
    });
    $('#category_select').select2({
      theme: 'bootstrap'
    });
    $('#btn-save').click(function (event) {
      event.preventDefault();
      category.save_category();
    });
  },
  
  show_create_category_modal: function () {
    $('#md-create-category').modal();
  },
  
  save_category: function () {
    var category = {
      parent_id: $('#category_select').val(),
      name: $('#name').val()
    };
    if (category.name === '') {
      alert(I18n.t('js.category.notice_blank'));
      return;
    }
    $.post(I18n.t('js.url_admin_category'),
      {category: category},
      function (data, status) {
      }, 'json');
  }
};

category.initialize();
