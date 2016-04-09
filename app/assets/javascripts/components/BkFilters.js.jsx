var BkFilters = React.createClass({
  getInitialState() {
    return {
      filterBy: this.props.filter
    };
  },
  setFilter: function (filter) {
    this.setState({
      filterBy: filter
    });
  },
  render: function () {
    return (
      <div className="bk-filters__row row">
        <div className="bk-filters__container col-sm-8 col-sm-offset-2">
          <Link to='/articles/everything'>
            <div onClick={ this.setFilter.bind(null,'everything') } className={ (this.state.filterBy == 'everything') ? "col-sm-2 col-sm-offset-1 bk-filters__option -selected" : "col-sm-2 col-sm-offset-1 bk-filters__option" }>
              All
            </div>
          </Link>
          <Link to='/articles/getayways'>
            <div onClick={ this.setFilter.bind(null,'getayways') } className={ this.state.filterBy == 'getayways' ? "col-sm-2 bk-filters__option -selected" : "col-sm-2 bk-filters__option" }>
              Near
            </div>
          </Link>
          <Link to='/articles/treks'>
            <div onClick={ this.setFilter.bind(null,'treks') } className={ this.state.filterBy == 'treks' ? "col-sm-2 bk-filters__option -selected" : "col-sm-2 bk-filters__option" }>
              Far
            </div>
          </Link>
          <Link to='/articles/things'>
            <div onClick={ this.setFilter.bind(null,'things') } className={ this.state.filterBy == 'things' ? "col-sm-2 bk-filters__option -selected" : "col-sm-2 bk-filters__option" }>
              Things
            </div>
          </Link>
          <Link to='/articles/recipes'>
            <div onClick={ this.setFilter.bind(null,'recipes') } className={ this.state.filterBy == 'recipes' ? "col-sm-2 bk-filters__option -selected" : "col-sm-2 bk-filters__option" }>
              Make
            </div>
          </Link>
        </div>
      </div>
    )
  }
});