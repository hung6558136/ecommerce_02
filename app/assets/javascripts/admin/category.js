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
    $('#btn-search-category').click(function (event) {
      event.preventDefault();
      category.search_category();
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
  },
  
  search_category: function () {
    $.get(I18n.t('js.url_admin_category'),
      {
        q: $('#tf-search-category').val(),
        page: 1
      },
      function (data, status) {
        $('#list-category').html(data);
      }, 'html');
  }
};

category.initialize();
