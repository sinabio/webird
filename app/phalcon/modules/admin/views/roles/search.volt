{{ content() }}

<div class="container">

  <div class="row">
    <div class="col-md-1 text-left">
      {{ link_to("admin/roles", '&larr; ' ~ _('Go Back'), "class": "btn btn-link") }}
    </div>
    <div class="col-md-1 col-md-offset-10 text-right">
      {{ link_to("admin/roles/create", _('Create roles'), "class": "btn btn-primary") }}
    </div>
  </div>

  <div class="row top10">
    <div class="col-md-12">
      <div class="table-responsive">

        {% for role in page.items %}
        {% if loop.first %}
        <table class="table table-bordered table-striped">
          <thead>
            <tr>
              <th>{{_('Id')}}</th>
              <th>{{_('Name')}}</th>
              <th>{{_('Active?')}}</th>
            </tr>
          </thead>
        {% endif %}
          <tbody>
            <tr>
              <td>{{ role.id }}</td>
              <td>{{ role.name }}</td>
              <td>{{ role.active == 'Y' ? _('Yes') : _('No') }}</td>
              <td width="12%">{{ link_to("admin/roles/edit/" ~ role.id, '<i class="glyphicon glyphicon-pencil"></i> ' ~ _('Edit'), "class": "btn btn-default") }}</td>
              <td width="12%">{{ link_to("admin/roles/delete/" ~ role.id, '<i class="glyphicon glyphicon-remove"></i> ' ~ _('Delete'), "class": "btn btn-default") }}</td>
            </tr>
          </tbody>
        {% if loop.last %}
          <tbody>
            <tr>
              <td colspan="10" align="right">
                <div class="btn-group">
                {{ link_to("admin/roles/search", '<i class="glyphicon glyphicon-fast-backward"></i> ' ~ _('First'), "class": "btn btn-default") }}
                  {{ link_to("admin/roles/search?page=" ~ page.before, '<i class="glyphicon glyphicon-step-backward"></i> ' ~ _('Previous'), "class": "btn btn-default") }}
                  {{ link_to("admin/roles/search?page=" ~ page.next, '<i class="glyphicon glyphicon-step-forward"></i> ' ~ _('Next'), "class": "btn btn-default") }}
                  {{ link_to("admin/roles/search?page=" ~ page.last, '<i class="glyphicon glyphicon-fast-forward"></i> ' ~ _('Last'), "class": "btn btn-default") }}
                  <span class="help-inline">{{ page.current }}/{{ page.total_pages }}</span>
                </div>
              </td>
            </tr>
          <tbody>
        </table>
        {% endif %}
        {% else %}
          {{_('No roles are recorded')}}
        {% endfor %}
      </div>
    </div>
  </div>

</div>
